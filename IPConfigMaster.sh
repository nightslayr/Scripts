#!/bin/bash
MINPARAMS=2
#[arg1] team number [arg2] interface name
sudo apt-get install putty-tools -y

plink root@10.15.1.20 -t /IPConfig.sh $1 $2
plink root@10.15.2.4 -t /IPConfig.sh $1 $2
plink root@10.15.2.2 -t /IPConfig.sh $1 $2

sudo apt-get remove putty-tools -y

sudo bash /IPConfig.sh $1 $2
