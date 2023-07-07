#!/bin/bash -e

if [[ -z $1 ]]; then
        branch=main
        release=protobuf
else
        branch=$1.x
        release=protobuf-$1
fi

git clone --branch $branch https://github.com/protocolbuffers/protobuf.git
cd protobuf && \
    git submodule update --init --recursive && \
    cd ..

mkdir build && cd build

cmake -G 'Ninja Multi-Config' -DCMAKE_INSTALL_PREFIX=/app/install/protobuf -Dprotobuf_BUILD_TESTS=OFF /app/protobuf
cmake --build . --config Release --target install;
cd /app/install;

tar cvfz /export/$release.tar.gz protobuf

echo "Exported $release.tar.gz"