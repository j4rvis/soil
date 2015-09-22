#!/bin/bash

sudo apt-get install libstdc++6:i386 lib32z1 unzip ant
wget http://dl.google.com/android/android-sdk_r24-linux.tgz
tar -xvzf android-sdk_r24-linux.tgz
rm android-sdk_r24-linux.tgz
mv android-sdk-linux ~/dev/res/android-studio

sudo add-apt-repository ppa:paolorotolo/android-studio
sudo apt-get update
sudo apt-get install android-studio

sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="22b8", MODE="0666", GROUP="plugdev"' > /etc/udev/rules.d/51-android.rules
sudo chmod a+r /etc/udev/rules.d/51-android.rules

