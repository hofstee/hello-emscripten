#!/bin/sh -l
echo "Hello world!"

apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing emscripten make
mkdir build && cd build
pwd

ls /usr/bin/
ls /usr/share/
ls /usr/share/emscripten
ls /usr/share/emscripten/cmake
ls /usr/share/emscripten/cmake/Modules
ls /usr/share/emscripten/cmake/Modules/Platform

emcmake cmake ..
make
cd -
