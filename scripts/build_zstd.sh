#!/bin/bash 
set -xe



pwd

apt-get install -y build-essential \
    cmake \
    pkg-config \
    libgflags-dev \
    libgoogle-glog-dev \
    libdouble-conversion-dev \
    liblz4-dev \
    libssl-dev \
    libboost-all-dev \
    libiberty-dev \
    liblzma-dev \
    libsnappy-dev \
    libjemalloc-dev \
    zlib1g-dev 



# git clone https://github.com/facebook/zstd.git --branch=v1.3.6


ssh-keyscan github.com >> $HOME/.ssh/known_hosts
git clone https://github.com/deltavoid/zstd.git --branch=b1.3.6


cd zstd
git checkout 4fa456d7f12f8b27bd3b2f5dfd4f46898cb31c24


make -j32
make install 

