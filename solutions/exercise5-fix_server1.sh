#!/bin/bash
ssh-keygen -t rsa -N '' -b 2048 -q -f ~/.ssh/server1.key -C "Server1 key"
echo "    IdentityFile ~/.ssh/server1.key
Host *
    StrictHostKeyChecking no" >> ~/.ssh/config
sudo mkdir /vagrant/shared
cp ~/.ssh/server1.key.pub /vagrant/shared