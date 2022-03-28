# Hotspot Shield VPN manual

## Installation

wget https://repo.hotspotshield.com/deb/rel/all/pool/main/h/hotspotshield/hotspotshield_1.0.7_amd64.deb
sudo apt install ./hotspotshield_1.0.7_amd64.deb
sudo apt update -y
sudo apt upgrade -y

## Usage
```sh
hotspotshield account signin		   # Sign in
hotspotshield account status		   # Check account status
hotspotshield locations			   # Check available locations
hotspotshield connect [country code]	   # Connect to location
hotspotshield status			   # Check connection status
hotspotshield disconnect		   # Disconnect
curl ipinfo.io				   # Check actual location
``` 
