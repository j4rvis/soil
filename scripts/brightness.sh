#!/bin/bash

echo -e 'Section "Device"\n' \
        '\tIdentifier  "card0"\n' \
        '\tDriver      "intel"\n' \
        '\tOption      "Backlight"  "intel_backlight"\n' \
        '\tBusID       "PCI:0:2:0"\n' \
        'EndSection' \
	> /usr/share/X11/xorg.conf.d/20-intel.conf
echo "You need to logout and login again for the chances to take effect."
