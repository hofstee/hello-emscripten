#!/bin/sh -l
apk add -q --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing cmake emscripten make
mkdir build && cd build

cmake --version
emcc --version

emcmake cmake ..
make
cd -
