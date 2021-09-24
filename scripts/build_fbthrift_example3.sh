#!/bin/bash 
set -xe


pwd


# reply on fbthrift


ssh-keyscan github.com >> $HOME/.ssh/known_hosts
git clone https://github.com/deltavoid/fbthrift_example3.git --branch=zqy-dev


cd fbthrift_example3
git checkout db4053036d91285045e7e7c696cbb8547ded9478


make build
make run_echo

