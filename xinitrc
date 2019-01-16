#! /bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xss-lock -- i3lock -i ~/pictures/wallpapers/zelda_symbol.jpg --verifsize=32 --wrongsize=32 --force-clock --bar-indicator --timesize=48 --keylayout 0 --ringwrongcolor=ff0000ff --layoutcolor=ffffffff --timecolor=ffffffff --datecolor=ffffffff --verifcolor=ffffffff --wrongcolor=ffffffff --ringvercolor=ffff00ff --timesize=128 --timepos=300:950 --datepos=200:1025 --datesize=32 --layoutsize=32 --layoutpos=1750:1025 &
#pgrep redshift &> /dev/null || redshift &> /dev/null &
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
exec i3

