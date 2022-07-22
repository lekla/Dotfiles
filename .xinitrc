#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Keyboard Layout
setxkbmap de &

# Screen Resolution
# xrandr --output Virtual-1 --mode 1920x1080
# xrandr --output DP-0 --mode 3440x1440 --rate 143.92 --primary --left-of HDMI-0
my_external_monitor = $(xrandr --query | grep 'HDMI-0')
if [[ $my_external_monitor = *connected* ]]; then
	xrandr --output DP-0 --mode 3440x1440 --rate 143.92 --primary --output HDMI-0 --mode 1920x1080 --right-of DP-0
else
	xrandr --output DP-0 --mode 3440x1440 --rate 143.92 --primary
fi


# Wallpaper
nitrogen --restore &

# Compositor
picom --experimental-backend &

# Window Manager
exec bspwm
