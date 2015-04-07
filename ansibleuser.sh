#!/bin/bash

ansible_public_key="ssh-rsa" 

# add ansible user
useradd ansible

# ad ssh key
mkdir -p /home/ansible/.ssh
echo $ansible_public_key > /home/ansible/.ssh/authorized_keys

# chown
chown -R ansible /home/ansible

# sudo
sed -i.bak -r 's/(^root.*)/&\nansible\tALL=(ALL)\tNOPASSWD:ALL/' /etc/sudoers
chmod 440 /etc/sudoers

echo "Successfully added ansible user..."
echo
