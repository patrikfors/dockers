FROM gcc:9.5
WORKDIR /app

# install cmake
RUN set -ex; \
    wget https://github.com/Kitware/CMake/releases/download/v3.26.4/cmake-3.26.4-linux-x86_64.sh; \
    sh cmake-3.26.4-linux-x86_64.sh --skip-license --exclude-subdir --prefix=/usr/local/; \
    rm cmake-3.26.4-linux-x86_64.sh

# install ninja
RUN set -ex; \
    wget https://github.com/ninja-build/ninja/archive/refs/tags/v1.11.1.tar.gz; \
    tar xvfz v1.11.1.tar.gz; \
    mkdir build; \
    cd build; \
    cmake ../ninja-1.11.1; \
    make install; \
    cd /app; \
    rm -Rf build v1.11.1.tar.gz ninja-1.11.1;
