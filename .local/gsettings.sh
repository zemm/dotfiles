#!/bin/bash

# alt rates used: 26/240
KB_INTERVAL=32
KB_DELAY=230

echo "keyboard repeat - generic"
xset r rate $KB_DELAY $KB_INTERVAL
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval $KB_INTERVAL
gsettings set org.gnome.desktop.peripherals.keyboard delay $KB_DELAY

echo "keyboard repeat - gnome"
gsettings set org.gnome.settings-daemon.peripherals.keyboard repeat-interval $KB_INTERVAL
gsettings set org.gnome.settings-daemon.peripherals.keyboard delay $KB_DELAY

echo "enable rmb resize"
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true

echo "nautilus settings"
gsettings set org.gnome.nautilus.preferences sort-directories-first true
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.list-view default-zoom-level 'smaller'
gsettings set org.gnome.nautilus.list-view default-visible-columns ['name', 'size', 'type', 'date_modified', 'owner', 'group', 'permissions', 'mime_type']
