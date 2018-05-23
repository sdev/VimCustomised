# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH


function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


export PS1="\[\e[2;32m\]\u\[\e[2;37m\]@\[\e[22;1;95m\]\h\[\e[0m\]:\[\e[1;33m\][\w\[\e[96m\]\$(parse_git_branch)\[\e[2;33m\]]\[\e[22;2;37m\]\\$ \[\e[0m\]"

trap 'echo -ne "\e[0m" ' DEBUG
