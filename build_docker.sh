#!/usr/bin/env bash

FLUTTER_VERSION=2

docker build --cache-from allbright/flutter:${FLUTTER_VERSION} \
             --tag allbright/flutter:${FLUTTER_VERSION} \
             sdk