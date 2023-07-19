#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=quannct/microservice-machine-learning:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservice-machine-learning\
    --image=$dockerpath\
    --port=80 --labels app=microservice-machine-learning

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward microservice-machine-learning 8080:80
