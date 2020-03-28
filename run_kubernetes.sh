#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="yinkin/udacity"

# Step 2
# Run the Docker Hub container with kubernetes
# To check the error when fail: kubectl describe pod project4 
# To delete fail pod: kubectl delete pod proj4 
kubectl run proj4\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=proj4


# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward proj4 8000:80
