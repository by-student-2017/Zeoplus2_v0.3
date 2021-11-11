#!/bin/bash

sudo apt -y update
sudo apt -y install g++ build-essential make

cd ./voro++/src
make
cd ../..
make
