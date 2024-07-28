#!/bin/bash

# Update package
opkg update

#install packages
opkg install iptables iptables-mod-nat-extra redsocks

#Then run this line
service redsocks stop && mv /etc/redsocks.conf /etc/redsocks.conf.bkp && cd /etc && wget https://raw.githubusercontent.com/ShoyibRatul/BDIX-OpenWRT/main/Socks5.conf && mv /etc/init.d/redsocks /etc/init.d/redsocks.bkp && cd /etc/init.d && wget https://raw.githubusercontent.com/ShoyibRatul/BDIX-OpenWRT/main/Socks5 && chmod +x /etc/init.d/Socks5

cd /
clear


echo -e "Thanks for installing. CH3CKM8"
