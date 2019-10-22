#!/bin/sh -l
echo "Hello world!"

apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing emscripten make
mkdir build && cd build
pwd

emcmake cmake ..
make
cd -
