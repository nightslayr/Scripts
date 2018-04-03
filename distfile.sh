#!/bin/bash
MINPARAM=1

scp $1 root@10.15.1.20:$1
scp $1 root@10.15.2.2:$1
scp $1 root@10.15.2.4:$1
