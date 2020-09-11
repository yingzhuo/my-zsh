#!/usr/bin/env zsh

# ----------------------------------------------------------------------------------------------------------------------
# 命令别名
# ----------------------------------------------------------------------------------------------------------------------
alias type='type -a'

alias cls='clear'

alias vi='vim'
alias edit='vim'
alias emacs='vim'
alias nano='vim'

alias date='/bin/date "+%F %T"'
alias timestamp='/bin/date +%s'

alias more='less'

alias ping='ping -c 5'

alias shutdown='false'
alias halt='false'
alias reboot='false'
alias poweroff='false'

alias mkdir='mkdir -p'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias q='exit'
alias qc='history -c && exit'

if [[ $EUID -eq -0 ]]; then
    alias root='true'
else
    alias root='su -'
fi

# ----------------------------------------------------------------------------------------------------------------------
# 环境变量
# ----------------------------------------------------------------------------------------------------------------------

# Editor
export EDITOR='vim'

# Time Style
export TIME_STYLE=long-iso

# Locale
export LC_ALL=en_US.UTF-8

# GPG
export GPG_TTY=$(tty)

# History
export HISTSIZE=1000
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000
export HISTCONTROL=ignoreboth:erasedups
