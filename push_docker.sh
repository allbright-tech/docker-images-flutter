#!/usr/bin/env bash

FLUTTER_VERSION=2

# docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push allbright/flutter:${FLUTTER_VERSION}
