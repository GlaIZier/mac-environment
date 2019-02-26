# Ansible mac environment initializer for developers
[![Build Status](https://travis-ci.org/GlaIZier/mac-dev-environment.svg?branch=master)](https://travis-ci.org/GlaIZier/mac-dev-environment)
// Fixme.
// todo test
// todo add info about this https://github.com/viasite-ansible/ansible-role-zsh/issues/18
// todo describe how to use it partially without all the steps
Ansible work environment initializer for a MacOs environment

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
11. add config for ssh
13. // create a separate repo for configs and dotfiles
12. add the sdk_man variable to zsh and bash profiles?
## Installation

  1. Ensure Apple's command line tools are installed (`xcode-select --install` to launch the installer).
  2. [Install Ansible](http://docs.ansible.com/intro_installation.html).
  3. Clone this repository to your local drive.
  4. Run `$ ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible roles.
  5. Run `ansible-playbook main.yml -i inventory -K` inside this directory. Enter your account password when prompted.

## Overriding Defaults

Not everyone's development environment and preferred software configuration is the same.

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
### Used roles
```
https://github.com/geerlingguy/ansible-role-homebrew
https://github.com/geerlingguy/ansible-role-mas
```

## Problems
https://stackoverflow.com/questions/29305335/how-can-i-persist-an-ansible-variable-across-ansible-roles
https://everythingshouldbevirtual.com/automation/ansible-using-set_facts-module/
https://stackoverflow.com/questions/30763709/ansible-playbook-execute-in-this-order-task-role-task-role-task

## Problems 
Describe a problem with sdkman role and {{ ansible_pkg_mgr }} 