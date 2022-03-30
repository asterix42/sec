# Practical Debian 11 clean install

 1. Install bebian from DVD (do not use netinstall cd - too long...)

 2. Login as root

```sh
usermod -aG sudo <username>
```
 3. Update /etc/apt/sources.list

```s
deb http://deb.debian.org/debian bullseye main contrib non-free
deb-src http://deb.debian.org/debian bullseye main contrib non-free

deb http://deb.debian.org/debian-security bullseye-security main contrib non-free
deb-src http://deb.debian.org/debian-security bullseye-security main contrib non-free

deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free
```

 4. Install sudo

 ```sh
 apt update
 apt install sudo
 ```

 5. Install docker
 ```sh
 # Update the apt package index and install packages to allow apt to use a repository over HTTPS
 sudo apt-get update
 sudo apt-get install ca-certificates curl gnupg lsb-release
 # Add Docker’s official GPG key:
 curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
 # Use the following command to set up the stable repository
 echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

 # Install docker engine
 sudo apt update
 
 # In case of error here run: 
 # sudo chmod a+r /usr/share/keyrings/docker-archive-keyring.gpg
 
 sudo apt install docker-ce docker-ce-cli containerd.io

 # Verify docker installed
 sudo docker run hello-world
 ```