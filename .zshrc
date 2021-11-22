# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

# Vim
export PATH=/opt/local/bin:$PATH

# start the emacs client
alias e='emacsclient --no-wait'

# tig start alias
alias tig='tig status'

# git aliases
alias gpf='git push --force-with-lease'
alias grbi2='git rebase -i HEAD~2'

# parent directory completion
zstyle ':completion:*' special-dirs true

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# nvm
export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh

# Java
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sunaku"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
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

# Plugins
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# enamble command history search in vi-mode
bindkey '^R' history-incremental-search-backward

# Include Sharetribe specific tooling
source ~/dotfiles/.strc
