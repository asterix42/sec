#!/bin/bash

wget https://ocean.surfshark.com/debian/pool/main/s/surfshark-release/surfshark-release_1.0.0-2_amd64.deb
## Install repository
sudo apt-get install surfshark-release_1.0.0-2_amd64.deb
## Update packages list
sudo apt-get update
## Install client app
sudo apt-get install surfshark-vpn
## Get help
surfshark-vpn --help