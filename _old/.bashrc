# .bashrc

export DIFF=kompare
export CTRL_VER=git

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

. /test.root/tools/setupenv
alias c=clear
alias ls='ls --color'
umask 0000

source ~/.git-completion.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
