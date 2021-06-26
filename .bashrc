#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[1;35m\]λ \[\e[1;32m\]\w\[\e[0m\]> '
