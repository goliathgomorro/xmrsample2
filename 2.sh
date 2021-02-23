#!/bin/bash
wget https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d
yum install VirtualBox-6.0 -y

VBoxManage --version
virtualbox
passwd -d root
yum groupinstall xfce -y
yum update -y

yum-complete-transaction
reboot