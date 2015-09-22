#!/bin/bash

sudo apt-get install git
# Git Config
# Amend Git config
cp ./settings/.gitconfig ~/.
echo -e "[user]\n\tname = $GIT_NAME\n\temail = $GIT_EMAIL\n" >> ~/.gitconfig
# Git version
git --version


