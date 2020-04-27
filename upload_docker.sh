#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=raosuper/saas-website:latest


# Step 2:  
# Build the image
docker build -t $dockerpath .

# Step 3:
# Push image to a docker repository
docker push $dockerpath
