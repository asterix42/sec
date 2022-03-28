# Git configuration on Linux

## Generating PAT

```sh
# Generate keys and save them to file
ssh-keygen -t ed25519 -C "your_email@example.com"

# Start ssh agent
eval "$(ssh-agent -s)"

# you may need to use root access by running 
#
sudo -s -H 
#
# before starting the ssh-agent, or you may need to use 
#
exec ssh-agent bash 
#
# or
# 
exec ssh-agent zsh
# 
# to run the ssh-agent.

# Add your SSH private key to the ssh-agent
ssh-add ~/.ssh/<filename>

# Copy public key to clipboard after this command
cat ~/.ssh/<filename>.pub

# Add corresponding public key to your account on github

# Use ssh style url to clone repositories, or change remote url with:
git remote set-url origin git@github.com:<user>/<repository>.git
```
