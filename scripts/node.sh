#!/bin/bash
#sudo apt-get install nodejs
#if [ ! -f "/usr/bin/node" ]; then
#        sudo ln -s /usr/bin/nodejs /usr/bin/node
#fi
#echo "node version: "; node --version
#echo "npm version: "; npm --v

#Or using nvm
sudo apt-get update
sudo apt-get install build-essential libssl-dev
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.2/install.sh | bash
source ~/.profile
nvm ls-remote
nvm install 0.10.25
nvm use 0.10.25
node -v
npm  --v
