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
    zlib1g-dev \
    bison \
    flex \
    libkrb5-dev 



# git clone https://github.com/facebook/fbthrift.git --branch=v2018.08.20.00


ssh-keyscan github.com >> $HOME/.ssh/known_hosts
git clone https://github.com/deltavoid/fbthrift.git --branch=zqy-dev


cd fbthrift
git checkout 17fd5359505ae1685f5be89b89ba63a1576d8844


mkdir _build
cd _build
cmake .. 
make -j32 
make install 

