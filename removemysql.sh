#!/bin/bash

#This script removes mysql completely from the machine, so you can reinstall if needed

service mysql stop
killall -KILL mysql mysqld_safe  mysqld
apt-get --yes purge mysql-server mysql-client
apt-get --yes autoremove --urge
apt-get --yes autoremove --purge
apt-get autoclean
deluser --remove-home mysql
delgroup mysql
rm -rf /etc/apparmor.d/abstratctions/mysql
rm -rf /etc/apparmor.d/cache/usr.sbin.mysqld
rm -rf /etc/mysql
rm -rf /var/lib/mysql
rm -rf /var/log/mysql*
rm -rf /var/log/upstart/mysql.log*
rm -rf /var/run/mysqld
updatedb

