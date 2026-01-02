# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# oh-my-zsh configuration
DISABLE_AUTO_UPDATE="false"
UPDATE_ZSH_DAYS=13
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(
  git
  brew
  colorize
  docker
  npm
  python
  rails
  ruby
  node
  macos
)

source $ZSH/oh-my-zsh.sh

# ============================================================================
# Environment Variables
# ============================================================================

export EDITOR=vim
export VISUAL=vim

# Path
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Use vim keybindings
bindkey -v

# Reduce ESC delay in vi mode
export KEYTIMEOUT=1

# Disable autocorrect
unsetopt correct
unsetopt correct_all

# ============================================================================
# Aliases
# ============================================================================

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# List files
alias ll="ls -alh"
alias la="ls -A"
alias l="ls -CF"

# Git aliases (supplementing oh-my-zsh git plugin)
alias gs="git status"
alias gp="git push"
alias gpl="git pull"
alias gc="git commit"
alias gca="git commit -a"
alias gcm="git commit -m"
alias gd="git diff"
alias gco="git checkout"
alias gb="git branch"
alias glog="git log --oneline --decorate --graph"

# Modern tools (if installed)
if command -v bat &> /dev/null; then
  alias cat="bat"
fi

if command -v exa &> /dev/null; then
  alias ls="exa"
  alias ll="exa -alh"
  alias tree="exa --tree"
fi

# Safety nets
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Nocorrect for specific commands
alias ssh="nocorrect ssh"
alias gem="nocorrect gem"
alias npm="nocorrect npm"
alias rake="nocorrect rake"

# Global aliases (work anywhere in command line)
alias -g G='| grep'
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g J='| jq'

# Brew shortcuts
alias bup="brew update && brew upgrade"
alias bcl="brew cleanup"

# Docker shortcuts
alias dps="docker ps"
alias dpa="docker ps -a"
alias di="docker images"

# ============================================================================
# Functions
# ============================================================================

# Create directory and cd into it
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# Execute command in all subdirectories
dir() {
  for d in ./*/ ; do (cd "$d" && echo "$d" && $*); done;
}

# Quick find
f() {
  find . -name "*$1*"
}

# Extract archives
extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1     ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar e $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xf $1      ;;
      *.tbz2)      tar xjf $1     ;;
      *.tgz)       tar xzf $1     ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# ============================================================================
# Load local customizations
# ============================================================================

if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi
