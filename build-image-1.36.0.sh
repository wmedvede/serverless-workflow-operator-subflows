#!/bin/bash

REGISTRY_USER=$USER
REGISTRY=quay.io

IMG=$REGISTRY/$USER/serverless-workflow-operator-subflows:1.0

docker build -f ./1.36.0/docker/Dockerfile \
  --tag $IMG \
  ./src/main/resources

#docker push $IMG
