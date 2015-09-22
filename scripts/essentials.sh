#!/bin/bash

# Add Keys
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
# Update
sudo apt-get update
# Install
#synaptic - touchpad
#bleachbit - cleanup
#y-ppa-manager - package-manager
#shareutils - gnu
sudo apt-get install synaptic y-ppa-manager bleachbit openjdk-7-jre flashplugin-installer unrar zip unzip p7zip-full p7zip-rar sharutils rar build-essential ruby ruby-dev make gcc terminator xclip unity-tweak-tool

