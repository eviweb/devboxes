#!/bin/sh

# Disable udev persistent net rules
[ -e /etc/udev/rules.d/70-persistent-net.rules ] && rm /etc/udev/rules.d/70-persistent-net.rules
mkdir -p /etc/udev/rules.d/70-persistent-net.rules
[ -e 75-persistent-net-generator.rules ] && rm /lib/udev/rules.d/75-persistent-net-generator.rules
rm -rf /dev/.udev/ /var/lib/dhcp3/*
echo "pre-up sleep 2" >> /etc/network/interfaces

# Disable DNS reverse lookup
echo "UseDNS no" >> /etc/ssh/sshd_config
