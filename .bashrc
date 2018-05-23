# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

LS_COLORS=$LS_COLORS:'di=1;93' ; export LS_COLORS

alias grep='grep --color'
