#!/bin/bash
MINPARAMS=1
#[arg1] location of script.
#ex. sudo bash runscripts.sh /example.sh

sudo apt-get install putty-tools -y

plink root@10.15.1.20 -t $1
plink root@10.15.2.4 -t $1
plink root@10.15.2.2 -t $1

sudo apt-get remove putty-tools -y

sudo bash $1 
