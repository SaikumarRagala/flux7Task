#!/bin/sh

# Install Ansible repository.
apt -y update && apt-get -y upgrade
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible -y

apt-get -qq install python -y

# Install Ansible.
apt-get update
apt-get install ansible -y

# Installing unzip
apt-get install unzip -y 

# Installing AWS
apt-get install awscli -y

# Installing graphviz
apt-get install graphviz -y


# Installing git
apt-get install git -y

# Cleanup unneded packages
apt-get -y autoremove

# Adjust timezone to be Singapore
ln -sf /usr/share/zoneinfo/Asia/Singapore /etc/localtime

# add user to sudo groups
usermod -aG sudo vagrant


# Add vagrant user to sudoers.
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

echo vagrant | sudo -S su - vagrant -c "ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -q -P ''"