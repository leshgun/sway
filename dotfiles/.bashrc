#
# ~/.bashrc
#

# Orange = 202m
# Purple = 201m

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='\[$(tput bold)\]\[\033[38;5;33m\]>[\w]: \[$(tput sgr0)\]'
PS1='\[$(tput bold)\]\[\033[38;5;201m\]>[\w]: \[$(tput sgr0)\]'

# source "$HOME/.vim/plugins/gruvbox/gruvbox_256palette.sh"
