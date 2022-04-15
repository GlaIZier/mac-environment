# MacOs playbooks

## Installation
Ensure Apple's command line tools are installed (xcode-select --install to launch the installer).

Install Ansible:

Run the following command to add Python 3 to your $PATH: export PATH="$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH"
Upgrade Pip: sudo pip3 install --upgrade pip
Install Ansible: pip3 install ansible

Run `$ ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible roles.
