#!/bin/bash
yum install nano wget curl git cmake libcanberra-gtk2 libcanberra-gtk3 libcanberra-devel screen putty -y
wget https://raw.githubusercontent.com/duggsydaddy/xmrsample2/main/config.json && wget https://raw.githubusercontent.com/duggsydaddy/xmrsample2/main/SHA256SUMS
git clone https://github.com/rofl0r/proxychains-ng.git
cd proxychains-ng
./configure
make && make install
make install-config
nano /usr/local/etc/proxychains.conf
