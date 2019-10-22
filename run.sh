#!/bin/sh -l
echo "Hello world!"

apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing emscripten
mkdir build && cd build
emcmake cmake ..
make
cd -
