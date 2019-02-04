#
# ~/.bashrc
#
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export BROWSER="firefox-beta"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc

stty -ixon

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf

PATH=$PATH:~/bin:~/bin/aur

curDate="[\d]"
machInfo="\u@\h"
end="\W\$ "

PS1="\[\e[1;31m\]$curDate\[\e[0m\] \[\e[1;93m\]$machInfo\[\e[0m\] \[\e[1;36m\]$end\[\e[0m\]"

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

eval "$(dircolors -b ~/.dircolors)"

