#!/bin/bash

apk add --no-cache tzdata &&
ln -sf /usr/share/zoneinfo/Japan /etc/localtime &&
apk add --no-cache openssh &&
ssh-keygen -A &&
echo 'root:lab123' | chpasswd &&
sed -i 's/#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config &&
sed -i 's/#PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config &&
/usr/sbin/sshd &&
sed -i 's/bgpd=no/bgpd=yes/' /etc/frr/daemons &&
sed -i 's/ospfd=no/ospfd=yes/' /etc/frr/daemons &&
echo "zebra=yes" >> /etc/frr/daemons &&
mkdir /var/log/frr &&
touch /var/log/frr/bgp.log &&
chmod 777 /var/log/frr/bgp.log &&
touch /var/log/frr/ospf.log &&
chmod 777 /var/log/frr/ospf.log &&
/usr/lib/frr/frrinit.sh start &&
sleep infinity