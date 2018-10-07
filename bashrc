#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=$PATH:~/bin
export BROWSER="firefox-beta"

LS_COLORS="*.tgz=1;31:di=1;37"
export LS_COLORS
curDate="[\d]"
machInfo="\u@\h"
end="\W\$ "

PS1="\[\e[1;31m\]$curDate\[\e[0m\] \[\e[1;93m\]$machInfo\[\e[0m\] \[\e[1;36m\]$end\[\e[0m\]"

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

#eval "$(dircolors -b ~/.dir_colors)"
neofetch

