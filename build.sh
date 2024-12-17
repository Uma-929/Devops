#!/bin/bash

# Build the Docker image
docker build -t devops-build .

# Push the image to Docker Hub
docker tag devops-build umakola/devops-build:dev
docker push umakola/devops-build:dev


