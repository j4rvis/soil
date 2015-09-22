#!/bin/bash
if [ ! -d ~/.ssh ]; then
	echo 'Create SSH Keypair.'
	ssh-keygen -t rsa -C $GIT_EMAIL
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_rsa
else
	echo 'SSH is already installed'
fi
echo 'Install xclip'
sudo apt-get install xclip

#---Copy public key to insert it to Gitlab and Github
xclip -sel clip < ~/.ssh/id_rsa.pub

# Wait for the user to insert the keys to Gitlab and Github
echo -e "\nThe SSH Key is copied into your clipboard." \
	"\nYou can now copy the key into your Github and Gitlab accounts." \
	"\nWhen you are finished you can continue the process."
read -p "Do you want to continue? Press any key."

#---Create ssh config with servers
#echo -e "Host pi\n  HostName raspberry\n  User pi" > ~/.ssh/config

