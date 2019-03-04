# Ansible mac environment initializer for developers
[![Build Status](https://travis-ci.org/GlaIZier/mac-dev-environment.svg?branch=master)](https://travis-ci.org/GlaIZier/mac-dev-environment)
// Fixme.
// todo test
// todo fix idempotence
Ansible work environment initializer for a MacOs environment

## What does it do
1. adds configs (dotfiles like .bashrc) from a github repository to your home directory '~'
2. installs homebrew and homebrew (git, wget... check the full list in the config) along with cask (idea, chrome... check the full list in the config) apps ([homebrew role](https://github.com/geerlingguy/ansible-role-homebrew))
3. installs mas and mas applications ([mas role](https://github.com/geerlingguy/ansible-role-mas))
4. installs sdkman and sdk applications ([sdkman role](https://github.com/Comcast/ansible-sdkman))
5. installs zsh, oh-my-zsh and configures it ([oh-my-zsh role](https://github.com/viasite-ansible/ansible-role-zsh))
6. creates a pair of ssh keys
7. installs additional npm, python, ruby and php packages

## Dependencies
[homebrew role](https://github.com/geerlingguy/ansible-role-homebrew)\
[mas role](https://github.com/geerlingguy/ansible-role-mas)\
[sdkman role](https://github.com/Comcast/ansible-sdkman)\
[oh-my-zsh role](https://github.com/viasite-ansible/ansible-role-zsh) \
In order to install configs in a home directory, a repository with them is required. My [repository](https://github.com/GlaIZier/configs) is used by default

## Issues
1. For some reason after installing homebrew using the homebrew role, {{ ansible_pkg_mgr }} is unknown in ansible facts (see [this issue](https://github.com/geerlingguy/ansible-role-homebrew/issues/117) and [this issue](https://github.com/Comcast/ansible-sdkman/issues/42)). For a workaround, a manual explicit setup is used in pretasks section. Useful links:
https://stackoverflow.com/questions/29305335/how-can-i-persist-an-ansible-variable-across-ansible-roles \
https://everythingshouldbevirtual.com/automation/ansible-using-set_facts-module/ \
https://stackoverflow.com/questions/30763709/ansible-playbook-execute-in-this-order-task-role-task-role-task \
2. For the oh-my-zsh role, it fails on the "Download fzf" step, which uses the unarchive module. This issue is described [here](https://github.com/viasite-ansible/ansible-role-zsh/issues/18) As a workaround fzf is installed by the homebrew role.
3. This role is not idempotent?

## Installation
  1. Ensure Apple's command line tools are installed (`xcode-select --install` to launch the installer).
  2. [Install Ansible](http://docs.ansible.com/intro_installation.html).
  3. Clone this repository to your local drive.
  4. Run `$ ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible roles.
Note: If some Homebrew commands fail, you might need to agree to Xcode's license or fix some other Brew issue. Run brew doctor to see if this is the case.

## Run
### Run all tasks
`ansible-playbook main.yml -i inventory -K` inside this directory. Enter your account password when prompted. \
### Run separate tasks
Filter by tags can be used: `ansible-playbook main.yml -i inventory -K --tags "dotfiles,homebrew"` \
Or update the config to disable some tasks, e.g. `configure_homebrew: no` \
By using these strategies you can execute tasks one by one.


## Config
You can override any of the defaults configured in `default.config.yml` by creating a `config.yml` file and setting the overrides in that file. For example, you can customize the installed packages and apps with something like:

    homebrew_installed_packages:
      - cowsay
      - git
      - go
    
    mas_installed_apps:
      - { id: 443987910, name: "1Password" }
      - { id: 498486288, name: "Quick Resizer" }
      - { id: 557168941, name: "Tweetbot" }
      - { id: 497799835, name: "Xcode" }
    
    composer_packages:
      - name: hirak/prestissimo
      - name: drush/drush
        version: '^8.1'
    
    gem_packages:
      - name: bundler
        state: latest
    
    npm_packages:
      - name: webpack
    
    pip_packages:
      - name: mkdocs

Any variable can be overridden in `config.yml`; see the supporting roles' documentation for a complete list of available variables.

## Inspired by [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook) 

1. // add .bash_aliases, ... (add links from home to this repo) (config.yml)
2. // install homebrew, homebrew cask (), mas
2. // install sdkman, java, maven, gradle
3. // download chrome, idea, sublime, skype, google-backup-and-sync, docker, iTerm2, telegram?
4. // git and git settings (git config, gitignore)?
5. // generate .ssh keys for github?
6. // install python and additional python dependencies
8. // add an overridable config
9. // install extra_packages
10. install zsh .zshrc?
https://github.com/fourforbusiness/ansible-role-oh-my-zsh/blob/master/templates/zshrc.j2
https://github.com/veggiemonk/ansible-ohmyzsh
https://github.com/viasite-ansible/ansible-role-zsh
11. // add config for ssh
13. // create a separate repo for configs and dotfiles
12. add the sdk_man variable to zsh and bash profiles. After tests
