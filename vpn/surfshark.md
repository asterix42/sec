# Configure Surfshark VPN on Linux

## Installing
```sh
## Get Repository installer
wget https://ocean.surfshark.com/debian/pool/main/s/surfshark-release/surfshark-release_1.0.0-2_amd64.deb
## Install repository
sudo apt-get install surfshark-release_1.0.0-2_amd64.deb
## Update packages list
sudo apt-get update
## Install client app
sudo apt-get install surfshark-vpn
```

## Running

```sh
sudo surfshark-vpn
```

## Commands
```sh
# Use this command to print all Surfshark commands in the terminal:
sudo surfshark-vpn help

# Check your connectivity status:
sudo surfshark-vpn status

# Disconnect from Surfshark VPN:
sudo surfshark-vpn down

# Quick-connect to your Optimal location:
sudo surfshark-vpn attack

# To log out of the client:
sudo surfshark-vpn forget

# To connect to a MultiHop location:
sudo surfshark-vpn multi
```

## Uninstall
```sh
sudo apt-get remove surfshark-vpn
```

## Fix DNS problems
```sh
sudo sudo rm -r /etc/resolv.conf
sudo echo "nameserver 208.67.222.222\nnameserver 208.67.220.220" >> /etc/resolv.conf
sudo chattr -f +i /etc/resolv.conf
# RESTART OS
```
