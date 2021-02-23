#!/bin/bash
yum remove VirtualBox-5.1-5.1.38_122592_e17-1.x86_64
yum update -y
yum install kernel-devel kernel-devel-$(uname -r) kernel-headers kernel-headers-$(uname -r) make patch gcc -y
yum groupinstall "Development tools" -y

yum install \
https://repo.ius.io/ius-release-el7.rpm \
https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y

yum install dkms -y

yum install kernel-devel

yum --enablerepo=epel install dkms

yum-complete-transaction

reboot
