#!/bin/bash
# Sublime Config
if [ ! -f /etc/apt/sources.list.d/webupd8team-sublime-text-3-trusty.list ]; then
  sudo add-apt-repository ppa:webupd8team/sublime-text-3
fi
sudo apt-get update
sudo apt-get install sublime-text-installer

if [ -d ~/.config/sublime-text-3 ]; then
  cp ../settings/subl_pref.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
  cp ../settings/subl_keymap.sublime-keymap ~/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap
  xclip -sel clip < ./subl_package-control
  subl
fi
