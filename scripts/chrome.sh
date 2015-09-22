#!/bin/bash

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
if [ ! -f /etc/apt/sources.list.d/google.list ]; then
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google.list
fi
sudo apt-get update
sudo apt-get install google-chrome-stable
