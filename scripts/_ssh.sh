#!/bin/bash
if [ ! -d ~/.ssh ]; then
	ssh-keygen -t rsa -C "schwarzm90@gmail.com"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_rsa

	#---Copy Key to servers
	#ssh-copy-id pi@raspberry

	#---Create ssh config with servers
	#echo -e "Host pi\n  HostName raspberry\n  User pi" > ~/.ssh/config	

	#---Copy public key to insert it to Github
	#xclip -sel clip < ~/.ssh/id_rsa.pub
fi
