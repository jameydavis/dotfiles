# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# use vim keybindings
bindkey -v

# set vim as fav editor
export EDITOR=vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew colorize)

source $ZSH/oh-my-zsh.sh
unsetopt correct

# My aliases
alias ssh="nocorrect ssh"
alias gem="nocorrect gem"
alias rvm="nocorrect rvm"
alias lein="nocorrect lein"
alias scala="nocorrect scala"
alias rake="nocorrect rake"
alias npm="nocorrect npm"

alias sr="sbt run"

alias ll="ls -alh"

# Banno aliases
alias grip="cd ~/Banno/grip-admin"

#Global Aliases
alias -g G='| grep'
alias -g L='| less'
alias -g T='tail -fn 100'
alias bgrep="bub logs grep"
alias buser="bub api user"

alias -g bh='brew home'
alias -g bs='brew search'

alias -g srd='screen -rd'

alias -g v='mvim'

alias -g s3='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

alias -g focus1='sbagen /Applications/sbagen-1.4.5/examples/focus/ts1-concentration.sbg'

# Customize to your needs...
export PATH=$PATH:/Users/jdavis/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/jdavis/cl/bin
