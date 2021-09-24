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


# git clone https://github.com/facebook/wangle.git --branch=v2018.08.20.00


ssh-keyscan github.com >> $HOME/.ssh/known_hosts
git clone https://github.com/deltavoid/wangle.git --branch=zqy-dev


cd wangle
git checkout 5d6bb85f8bf391f95461113110b76a3b863f9f25


cd wangle
mkdir _build
cd _build
cmake .. 
make -j32 
make install 

