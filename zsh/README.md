# Brew playbook
https://github.com/viasite-ansible/ansible-role-zsh

## What does it do
Configures zsh

## Installation 
Run `$ ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible roles.

## Run
ansible-playbook -i "localhost," -c local -K zsh.yml
