#! /bin/bash

# first install some necessary packages
sudo apt update &&
sudo apt upgrade -y &&
sudo apt-get install libhdf5-dev -y &&
sudo apt-get install build-essential libssl-dev libffi-dev python3-dev -y &&
sudo apt-get install gcc-aarch64-linux-gnu -y
