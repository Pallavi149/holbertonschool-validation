#!/bin/bash
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
tar -zxvf hugo_extended_0.84.0_Linux-64bit.tar.gz
sudo mv hugo /usr/local/bin/
sudo apt-get update 
sudo apt-get install -y hugo make
