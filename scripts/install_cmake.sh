#!/usr/bin/env sh

mkdir -p build
cd build

OS_NAME=$(uname -s)
CMAKE_NAME=cmake-3.7.1-$OS_NAME-x86_64
CMAKE_BIN=$(pwd)/$CMAKE_NAME/bin

if ! $CMAKE_BIN/cmake --version; then
echo "Downloading $CMAKE_NAME"
curl -s https://cmake.org/files/v3.7/$CMAKE_NAME.tar.gz | tar xz
fi

export PATH=$CMAKE_BIN:$PATH
cd ..