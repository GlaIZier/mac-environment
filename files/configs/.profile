#!/bin/sh
#   ~/.profile
#
# POSIX Shell login script.
# Common config for all shells. Call this from .bashrc, .zshrc

# aliases
alias ll='ls -lah'
alias calc='wcalc -c'

#docker
alias dim="docker images"
alias dimu="docker images -a | grep '^<none>'"
alias dps="docker ps"
alias drm="docker rm"
alias drmi="docker rmi"

#git
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gull='git pull'
alias gush='git push'
alias gb='git branch --color'
alias gco='git checkout'
alias gd='git diff --color'
alias gr='git rebase'
alias gl='git log --graph --all --full-history --color --branches --decorate --name-status'
alias gls='git log --graph --all --full-history --color --pretty=format:"%C(yellow) %h %C(cyan) %ad %Creset %s %b %C(red) %d %Creset" --date=short'


# env variables
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home"
# export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
# export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/GlaIZier/.sdkman"
# [[ -s "/Users/GlaIZier/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/GlaIZier/.sdkman/bin/sdkman-init.sh"
