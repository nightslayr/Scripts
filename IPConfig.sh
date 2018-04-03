#!/bin/bash
MINPARAMS=2
#[arg1] team number [arg2] interface name
echo -e "# The loopback network interface \nauto lo \niface lo inet loopback \n\n #The primary network interface \nauto "$2" \niface "$2" inet static \n address 10."$1".1.10 \nnetmask 255.255.255.0 \ngateway 10."$1".1.1 \ndns-nameservers 10."$1".1.50" > /etc/network/interfaces
reboot
