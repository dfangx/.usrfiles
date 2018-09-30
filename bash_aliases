alias ls="ls --color"
alias la="ls -a"
alias lal="ls -al"
#Shell Maintenance
alias refresh="clear && source ~/.bashrc"
alias edtalias="vim ~/.bash_aliases"

#Disk Management
alias lfdisk="sudo fdisk -l"
alias pfdisk="sudo fdisk $1"

#Power options
alias logout="i3-msg exit i3"
alias shutdown="systemctl poweroff"
alias suspend="systemctl suspend"
alias restart="systemctl reboot"

#Multiple outputs
alias hdmidflt="xrandr --auto"
alias hdmi2mirror="xrandr --output HDMI2 --auto --same-as eDP1"
alias hdmi2right="xrandr --output HDMI2 --auto --right-of eDP1"
alias hdmi2left="xrandr --output HDMI2 --auto --left-of eDP1"
alias mvspacel="i3-msg move workspace to output left"
alias mvspacer="i3-msg move workspace to output right"

#System maintenance
alias powreport="sudo powertop --html && firefox-beta ~/powertop.html"
alias sysbackup="sudo tar cvpzf arch-linux-backup-$(exec date +%F).tgz ~/.bash_aliases ~/.bashrc ~/.config ~/.dir_colors ~/documents ~/downloads ~/pictures ~/.vimrc ~/.xinitrc ~/.Xresources /etc/sudoers.d /etc/X11/xorg.conf.d/40-libinput.conf /etc/grub.d/40_custom /usr/local/bin /etc/udev/rules.d /etc/systemd/system /etc/netctl ~/1_accuweather"
alias sysrestore="sudo tar -xvpzf $1 -C $2 --numeric-owner"
alias sysupdate="curl -s 'https://www.archlinux.org/mirrorlist/?country=CA&country=US&protocol=https&use_mirror_status=on' | sed -e 's/^#Server/Server/' -e '/^#/d' |rankmirrors -n 6 - | sudo tee /etc/pacman.d/mirrorlist && sudo pacman -Syu && cower -fdu --target ~/documents/build"
#alias pkgbuild="cd ~/documents/build/$2"
alias sysclean="sudo pacman -Rns $(pacman -Qtdq)"
alias pkginstall="sudo pacman -Syu $1"
alias pkgremove="sudo pacman -Rsc $1"

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
