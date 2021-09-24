#!/bin/bash 
set -xe



pwd


apt-get install -y build-essential \
    cmake \
    pkg-config \
    libgflags-dev \
    liblz4-dev \
    libssl-dev \
    libboost-all-dev 



# git clone https://github.com/libevent/libevent.git --branch=release-2.1.8-stable


ssh-keyscan github.com >> $HOME/.ssh/known_hosts
git clone https://github.com/deltavoid/libevent.git --branch=zqy-dev


cd libevent
git checkout 3abf33469d1c20f1ab093c3e37dc0a4284b5ae49


mkdir _build
cd _build
cmake .. 
make -j32 
make install 
