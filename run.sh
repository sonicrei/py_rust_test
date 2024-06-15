#!/bin/bash

IMAGE_NAME=rust_env
IMAGE_TAG=lastest
DOCKER_NAME=rust_env_temp

docker build -t $IMAGE_NAME:$IMAGE_TAG ./
# docker rm $DOCKER_NAME --force
docker run --name=$DOCKER_NAME -v ./exp:/root/workspace/exp $IMAGE_NAME:$IMAGE_TAG
docker rm $DOCKER_NAME --force



