#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="dr146457/project-ml-microservice-kubernetes"

# Step 2:  
# Authenticate & tag
docker login --username=dr146457
echo "Docker ID and Image: $dockerpath"
docker image tag udacity_project_four $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath

