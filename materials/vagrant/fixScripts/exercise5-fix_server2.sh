#!/bin/bash
cp /vagrant/shared/server1.key.pub ~/.ssh/
cat ~/.ssh/server1.key.pub >> ~/.ssh/authorized_keys