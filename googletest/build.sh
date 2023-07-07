#!/bin/bash -e

if [[ -z $1 ]]; then
        branch=main
        release=googletest
else
        branch=v$1.x
        release=googletest-$1
fi

git clone --branch $branch https://github.com/google/googletest.git
mkdir build && cd build

cmake -G 'Ninja Multi-Config' -DCMAKE_INSTALL_PREFIX=/app/install/googletest /app/googletest
cmake --build . --config Release --target install;
cd /app/install;

tar cvfz /export/$release.tar.gz googletest

echo "Exported $release.tar.gz"