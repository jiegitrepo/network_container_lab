#!/bin/bash

apk add --no-cache openssh &&
ssh-keygen -A &&
echo 'root:lab123' | chpasswd &&
sed -i 's/#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config &&
sed -i 's/#PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config &&
/usr/sbin/sshd &&
sed -i 's/bgpd=no/bgpd=yes/' /etc/frr/daemons &&
sed -i 's/ospfd=no/ospfd=yes/' /etc/frr/daemons &&
echo "zebra=yes" >> /etc/frr/daemons &&
/usr/lib/frr/frrinit.sh start &&
sleep infinity