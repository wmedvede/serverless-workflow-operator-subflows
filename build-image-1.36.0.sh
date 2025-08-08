#!/bin/bash

REGISTRY_USER=$USER
REGISTRY=quay.io

IMG=$REGISTRY/$USER/serverless-workflow-operator-subflows:1.0

# Given the structuring of current project, the docker build is started using the current src/main/resources as context.
docker build -f ./1.36.0/docker/Dockerfile \
  --tag $IMG \
  ./src/main/resources

#docker push $IMG
