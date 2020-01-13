FROM musicscience37/gcc-ubuntu:version-1.2

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates=20190110 \
        perl=5.28.1-6build1 \
        wget=1.20.3-1ubuntu1 && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/*

WORKDIR /usr/local/lcov
RUN wget -nv https://github.com/linux-test-project/lcov/releases/download/v1.14/lcov-1.14.tar.gz && \
    tar xf lcov-1.14.tar.gz && \
    make -C lcov-1.14 install && \
    rm -r lcov-1.14 lcov-1.14.tar.gz

WORKDIR /usr/local/cmake
RUN wget -nv https://github.com/Kitware/CMake/releases/download/v3.16.2/cmake-3.16.2-Linux-x86_64.tar.gz && \
    tar xf cmake-3.16.2-Linux-x86_64.tar.gz && \
    rm cmake-3.16.2-Linux-x86_64.tar.gz
ENV PATH=/usr/local/cmake/cmake-3.16.2-Linux-x86_64/bin:$PATH
