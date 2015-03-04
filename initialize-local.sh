#!/bin/bash

if [! -f ~/.ssh/id_rsa ] 
then
	echo "Please install ssh keys"
	exit 1
fi

sudo apt-get update
sudo apt-get install curl ansible git
echo "export ANSIBLE_NOCOWS=1" >> ~/.profile
export ANSIBLE_NOCOWS=1
echo "eval `keychain --eval id_rsa`" >> ~/.profile

source ~/.profile
