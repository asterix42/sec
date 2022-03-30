# Configure Debian 11

## After install

```sh
su # enter root shell
apt-get update # update repo info
apt install sudo # if needed
# As root:
sudo usermod -aG sudo <username> # add current user to `sudo` group
reboot

# Add non-free repositories
sudo apt install vim
sudo vim /etc/apt/sources.list

# OR

echo 'deb http://deb.debian.org/debian bullseye main contrib non-free
deb-src http://deb.debian.org/debian bullseye main contrib non-free
deb http://deb.debian.org/debian-security bullseye/updates main contrib non-free
deb-src http://deb.debian.org/debian-security bullseye/updates main contrib non-free
deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free' >> /etc/apt/sources.list

# Install git
sudo apt install git

#
# This is if you want to clone via ssh :
#

# Generate key pairs
ssh-keygen -t ed25519 -C "your_email@example.com"
# Start ssh-agent
eval "$(ssh-agent -s)"
# Add ssh identity
ssh-add /home/<user>/.ssh/<filename>
# Add to ~/.bashrc:
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
fi

# Add public key to github.com ...

## Restart

#
# END
#
git clone https://github.com/asterix42/sec.git
```