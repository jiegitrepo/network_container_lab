#!/bin/sh
cp /ansible/ansible.cfg /etc/ansible/
cd /
mkdir /ansible_plays
ln -s /ansible/inventory.ini /ansible_plays/inventory.ini
ln -s /ansible/ansible_play /ansible_plays/plays
sleep infinity