#!/bin/sh -l
mkdir build && cd build

cmake --version
emcc --version

emcmake cmake ..
make
cd -
