#!/bin/bash

## Make sure that you have a internet connection on your pi
## run this script as root

# update && upgrade
sudo apt-get update
sudo apt-get dist-upgrade

# git
apt-get install git-all
# ask for git name and email
echo -e "\x1B[1;33m[GIT USER]\x1B[0m"
read -rp "What is your user.name? " name
read -rp "What is your user.email? " email
git config --global user.name ${name}
git config --global user.email ${email}

# vim
apt-get install vim
mv -rf ./.vim ~/.vim
mv -rf ./.vimrc ~/.vimrc

# nodejs
apt-get install nodejs nodejs-legacy
apt-get install npm
# npm permission fix
chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}

# rasperry pi camera python plugin
apt-get install python-picamera