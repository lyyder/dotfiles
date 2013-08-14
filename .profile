# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# tig start alias
alias tig='tig status'

# Java options
export set JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF8"

# Maven
export MAVEN_OPTS="-Xmx2048m -XX:PermSize=512M -Dsolr.data.dir=/Users/hannu/tmp/data -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005"
#export MAVEN_OPTS="-Xmx2048m -XX:PermSize=512M"

# Scala
export SCALA_HOME=/usr/local/share/scala/latest
export PATH=$PATH:$SCALA_HOME/bin

# Play Framework
export PATH=$PATH:/Users/hannu/software/play/play-2.1.1

# Git auto-complete
source ~/.git-completion.bash

# Git prompt
source ~/.git-prompt.sh

# Git coloring
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_GRAY"\u@\h"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    else echo "'$CYAN'"$(__git_ps1 " (%s)")
    fi)'$BLUE" \w"$GREEN": "

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
