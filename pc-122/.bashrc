#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias gti='git'

function ssh_alias() {
    ssh $@;
    setterm -default -clear all;
}

alias ssh=ssh_alias

export EDITOR=vim

PS1='[\u@\h \W]\$ '

PATH="~/misc/dev01:$PATH"

search()
{
    find \( -type f -name "*.cgi" -o -name "*.conf" -o -name "*.html" -o -name "*.js" -o -name "*.pl" -o -name "*.pm" -o -name "*.tmpl" -o -name "*.t" -o -name "*.tt" \) -print0 | xargs -0 fgrep --color=always  "$@" | less -RFX
}

source ~/git-completion.bash
source ~/perl5/perlbrew/etc/bashrc
