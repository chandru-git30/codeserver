## CodeServer
Dive into the Future of Development with this High-Performance, Versatile Containerized Development Environment. Unleash Your Coding Potential Today!"🐳

## CodeServer: Quick Start Guide 🎉
🌟 Welcome to the CodeServer Repository! 🚀

Here, we present to you the ultimate CodeServer Dockerfile, featuring Python 🐍 and Java ☕ as its dynamic defaults. Dive into a world where coding is not just a task but an exhilarating experience!

🐳 Why Containerization Matters 🌐
Containerization is the heart and soul of modern development. It encapsulates your entire development environment, ensuring consistency, portability, and scalability across various platforms. With Docker at your side, you can conquer the coding universe without missing a beat! 💡🌟

Unleash the power of CodeServer in a containerized world and supercharge your coding journey! 💻🔥

## Prerequisites 🛠️
Before you begin, make sure you have the following installed on your system:

- Docker: https://docs.docker.com/get-docker/ 🐳
- Git: https://git-scm.com/downloads 📦

## Getting Started

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/chandru-git30/codeserver.git
   cd codeserver
   ```
2. **Run the Docker Container:**
   ```bash
   docker build -t coderserver .
   ```
   Once the build process is completed,Execute
   ```bash
   docker images
   ```
   To check the images is build successfully
   ```bash
   docker run -it --rm -d -p 8080:8080 coderserver --name codeservercontainer
   ```
   Go to browser and execute
   ```bash
   localhost:8080
   ```
