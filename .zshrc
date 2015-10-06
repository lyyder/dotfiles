export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# Customize to your needs...
export PATH=$PATH:/usr/local/heroku/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/share/scala/latest/bin:/Users/hannu/software/play/latest

# Vim 
export PATH=/opt/local/bin:$PATH

# tig start alias
alias tig='tig status'

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home
export set JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF8"

# Maven
export MAVEN_OPTS="-Xmx2048m -XX:PermSize=512M -Dsolr.data.dir=/Users/hannu/tmp/data -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005"

# Gradle
export GRADLE_HOME=/Users/hannu/software/gradle/latest
export PATH=$PATH:$GRADLE_HOME/bin
export GRADLE_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005"

# Activator
export PATH=$PATH:/Users/hannu/software/activator/latest

# cabal / haskell
export PATH=~/.cabal/bin:$PATH

# parent directory completion
zstyle ':completion:*' special-dirs true

export ANSIBLE_HOST_KEY_CHECKING=False

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
plugins=(git vagrant vi-mode)

source $ZSH/oh-my-zsh.sh

# enamble command history search in vi-mode
bindkey '^R' history-incremental-search-backward
