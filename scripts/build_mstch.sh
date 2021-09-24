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



# git clone https://github.com/no1msd/mstch.git --branch=1.0.2


ssh-keyscan github.com >> $HOME/.ssh/known_hosts
git clone https://github.com/deltavoid/mstch.git --branch=zqy-dev


cd mstch
git checkout 8622ef7b8b0a17bb1df1484cfbc6ec9fa70edc24


mkdir _build
cd _build
cmake .. 
make -j32 
make install 

