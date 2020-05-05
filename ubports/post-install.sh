#!/bin/bash

# Mount system read/write
sudo mount -o remount,rw /

# Install base
sudo apt install anbox-ubuntu-touch \
     android-tools-adb autossh \
     ffmpeg gcc pkg-config \
     python3-tk python3-openssl \
     screen tor tree vim wget zsh

# Setup DNS
sudo su -c "printf 'nameserver 8.8.8.8\nnameserver 8.8.4.4' >> /etc/resolvconf/resolv.conf.d/base"
 
# Install python packages
python3 -m pip install --user --upgrade Cython ipykernel ipython youtube-dl

# Setup tor
sudo cp torrc /etc/tor/torrc
sudo mkdir /var/lib/tor/ssh
sudo cp /tor/* /var/lib/tor/ssh

