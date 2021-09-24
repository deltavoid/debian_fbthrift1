#!/bin/bash 
set -xe



# WORK_DIR=/repos
# cd $WORK_DIR
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

    # libevent-dev \



# git clone https://github.com/facebook/folly.git --branch=v2018.08.20.00


ssh-keyscan github.com >> $HOME/.ssh/known_hosts
git clone https://github.com/deltavoid/folly.git --branch=zqy-dev


cd folly 
git checkout 6fc758b02e384782daf127b2e2d92f544a9838ef


mkdir _build
cd _build
cmake .. 
make -j32 
make install 

