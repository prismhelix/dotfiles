#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrandr --output DVI-1 --auto --right-of DVI-0 &
xrdb -load ~/.Xresources &
feh ~/Downloads/2Z8QH7M.png --bg-tile --no-xinerama &
exec i3
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
