ansible-ubuntu-setup
====================

My Ubuntu setup

*init*

- sudo apt-get install git
- sudo apt-get install ansible
- sudo apt-get install fakeroot
- sudo apt-get install openssh-server
- setup ssh keys 
- cat ~/.ssh/id_rsa.pub > authorized_keys

- git clone https://github.com/drankard/ansible-ubuntu-setup.git ~/projects/ansible-ubuntu-setup
- cd ~/projects/ansible-ubuntu-setup/debian-packages/ansible-client
- ./build.sh
- sudo dpkg -i ansible-client-1.0.4.deb
- cd ~/projects/ansible-ubuntu-setup/
- ansible-playbook -i hosts david-default.yml
