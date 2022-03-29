# Configure Debian 11

## After install

```sh
su # enter root shell
apt-get update # update repo info
apt install sudo # if needed
sudo usermod -aG sudo <username> # add current user to `sudo` group

# Install git
sudo apt install git

```