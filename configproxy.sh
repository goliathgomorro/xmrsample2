#!/bin/bash
yum install nano wget curl git cmake libcanberra-gtk2 libcanberra-gtk3 libcanberra-devel screen putty -y
git clone https://github.com/rofl0r/proxychains-ng.git
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip ngrok-stable-linux-amd64.zip
cd proxychains-ng
wget https://raw.githubusercontent.com/duggsydaddy/xmrsample2/main/config.json && wget https://raw.githubusercontent.com/duggsydaddy/xmrsample2/main/SHA256SUMS
./configure
make && make install
make install-config
nano /usr/local/etc/proxychains.conf
