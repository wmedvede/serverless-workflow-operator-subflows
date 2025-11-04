#!/bin/bash

# Example of building the image using the OSL builder image.

REGISTRY_USER=$USER
REGISTRY=quay.io
TAG=1.0-main-00

IMG=$REGISTRY/$USER/serverless-workflow-operator-subflows:$TAG

docker build -f ./docker/Dockerfile \
  --tag $IMG \
  ./src/main/resources

#docker push $IMG
