#!/bin/bash
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip  && unzip ngrok-stable-linux-amd64.zip && ./ngrok authtoken 1otMXh0UgbkyIr04CYiB5FQAewR_36ASRC2Rcg4zsU74NNAds
yum install screen -y
vncserver -SecurityTypes None
