#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Aliases
alias ls='ls --color=auto'
alias unpack='aunpack'
alias shutdown='shutdown -h now'
alias del="mv"

#Shell
PS1='[\u@\h \W]\$ '
