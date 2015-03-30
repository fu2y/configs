#
# ~/.zshrc
#

autoload -U promptinit
promptinit

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Aliases
alias ls='ls --color=auto'
alias unpack='aunpack'
alias shutdown='shutdown -h now'
alias del="mv -t ~/trash"

# Setting up the prompt
autoload -U colors && colors
PROMPT="%{$fg[cyan]%}%n:%1~%{$fg[green]%}# %{$reset_color%}"

# Enable auto complete for git
#fpath(~/.config/git/.zsh $fpath)
