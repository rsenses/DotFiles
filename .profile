# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Sirve para iniciar X desde tty
#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#    exec startx
#fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/.config/composer/vendor/bin" ] ; then
    export PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi

if [ -d "/var/lib/flatpak/exports/bin" ] ; then
    export PATH=$PATH:/var/lib/flatpak/exports/bin
fi

# Path para apps cargo
if [ -d "$HOME/.cargo/bin" ] ; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# Modifica CAPS_LOCK para que sirva de CTRL y ESC
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'
