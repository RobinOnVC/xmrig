#!/bin/bash
apt update
apt upgrade -y
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
screen