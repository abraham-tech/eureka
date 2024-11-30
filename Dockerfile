# Use the official Node.js LTS image as a base
FROM node:18-alpine AS base

# Set working directory
WORKDIR /app

# Install dependencies only when needed
FROM base AS deps
# Install dependencies
COPY package.json package-lock.json ./
RUN npm install --production=false

# Build the application
FROM base AS build
COPY . .
COPY --from=deps /app/node_modules ./node_modules
RUN npm run build

# Run production container
FROM base AS production
# Install only production dependencies
COPY package.json package-lock.json ./
RUN npm install --production

# Copy built application
COPY --from=build /app/public ./public
COPY --from=build /app/.next ./.next
COPY --from=build /app/node_modules ./node_modules
#COPY --from=build /app/next.config.js ./next.config.js

# Expose the Next.js default port
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]
