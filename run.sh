#!/bin/sh -l
echo "Hello world!"

apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing cmake emscripten make
mkdir build && cd build

ls /usr/bin/

emcmake cmake ..
make
cd -
