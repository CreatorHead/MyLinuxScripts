
#! /bin/bash

HOME=/root
LOGNAME=root
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
LANG=en_US.UTF-8
SHELL=/bin/sh
PWD=/root
HOST_NAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
WLAN_NAME=$(iw dev | awk '$1=="Interface"{print $2}')

service network-manager stop
sudo macchanger -r $WLAN_NAME
sudo hostnamectl set-hostname $HOST_NAME
sudo service network-manager start
echo 'Mac address changed...'

