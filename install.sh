#!/bin/bash
#before install check DB setting in 
#   judge.conf 
#   hustoj-read-only/web/include/db_info.inc.php
#   and down here
#and run this with root

#CENTOS/REDHAT/FEDORA WEBBASE

#try install tools
apt-get update && apt-get install -y make flex g++ clang libmysql++-dev openjdk-7-jdk python python3

#create user and homedir
/usr/sbin/useradd -m -u 1536 judge

./make.sh

mkdir /home/judge
mkdir /home/judge/etc
mkdir /home/judge/data
mkdir /home/judge/log
mkdir /home/judge/run0
mkdir /home/judge/run1
mkdir /home/judge/run2
mkdir /home/judge/run3

# Configure
cp java0.policy  judge.conf /home/judge/etc

chown -R judge /home/judge
chgrp -R $APACHEUSER /home/judge/data
chgrp -R root /home/judge/etc /home/judge/run?
chmod 775 /home/judge /home/judge/data /home/judge/etc /home/judge/run?


