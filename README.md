# eureka

This project demonstrates a simple Next.js application containerized using Docker. It follows modern best practices with a multi-stage build for optimized image size and performance.

## Features

- **Next.js Framework**: A React-based framework for server-side rendering and static site generation.
- **Dockerized**: Containerized using Docker with production and development environments.
- **Multi-Stage Build**: Reduces the final image size by separating build and runtime stages.
- **Lightweight Base Image**: Uses `node:18-alpine` for optimal performance.

## Prerequisites

- [Docker](https://www.docker.com/) installed (v20.10 or higher).
- [Node.js](https://nodejs.org/) (for local development, optional).

### Clone the Repository
git clone https://github.com/abraham-tech/eureka.git cd eureka


### Build and Run with Docker (Production)
1. **Build the Docker image**:

```bash
docker build -t eureka .
```

2. **Run the Docker container**:

```bash
docker run -p 3000:3000 eureka
```

3. **Access the application**:
   Visit [http://localhost:3000](http://localhost:3000) in your browser.

### Development Mode with Docker
1. **Build the development image**:

```bash
docker build -f Dockerfile.dev -t my-next-app-dev .
```


- The `-v` flags enable hot reloading by mounting the local code directory into the container.

3. **Access the development server**:
   Visit [http://localhost:3000](http://localhost:3000).

---

### Using Docker Compose
To simplify running the app, use the included `docker-compose.yml` file:
1. **Start the application**:

```bash
docker-compose up --build
```

2. **Stop the application**:

```bash 
docker-compose down
```
---

## Customization

- Update **`pages/index.js`** to modify the home page.
- Add new pages in the `pages/` directory following the Next.js routing conventions.
- Modify **`Dockerfile`** or **`docker-compose.yml`** for custom environments or dependencies.

---

## Best Practices

- Use `Dockerfile.dev` for local development to enable hot reloading.
- Regularly update dependencies in `package.json` to keep the application secure.
- Use `docker-compose` for managing multiple services or more complex setups.

---

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.

