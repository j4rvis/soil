#!/bin/bash

cd ~/.
if [ ! -d ~/.dot_files ]; then
  	echo 'Cloning .dot_files Repository'
	git clone git@github.com:j4rvis/.dot_files.git
fi
echo 'Removing old bash files'
rm ~/.bash*
rm ~/.profile
echo 'Copying new bash files'
cp .dot_files/.bash* ~/.
cp .dot_files/.profile ~/.
source .bashrc
echo 'Bash files updated'
