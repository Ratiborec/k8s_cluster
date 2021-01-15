#!/usr/bin/env bash
sudo apt update
sudo apt install python-apt
cat /vagrant/local/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
cat /home/vagrant/.ssh/authorized_keys
