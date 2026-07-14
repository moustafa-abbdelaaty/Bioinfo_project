# Week 3 - Docker Reference Commands

```bash
# Test that Docker is working
docker run hello-world

# Pull an image from Docker Hub
docker pull ubuntu

# Run a container interactively
docker run -it ubuntu bash

# Build an image from a Dockerfile in the current folder
docker build -t my-bioinfo-image .

# List running containers
docker ps

# List all containers (including stopped)
docker ps -a

# List all local images
docker images

# Remove a stopped container
docker rm CONTAINER_ID

# Remove an image
docker rmi IMAGE_ID

# Mount a local folder inside the container (volume mounting)
docker run -it -v $(pwd)/test_data:/data ubuntu bash

# Run a ready-made bioinformatics tool from Docker Hub (FastQC example)
docker pull biocontainers/fastqc:v0.11.9_cv8
docker run biocontainers/fastqc:v0.11.9_cv8 fastqc --version
```
