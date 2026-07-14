# Week 3 - Dockerfile Reference
# A complete working example of a simple Docker image with a bioinformatics tool

FROM ubuntu:22.04

# Update package list and install basic requirements
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Set the default working directory inside the container
WORKDIR /app

# Copy local files into the container (if needed)
# COPY . /app

# Default command that runs when the container starts
CMD ["bash"]
