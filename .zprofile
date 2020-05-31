# Sirve para iniciar X desde tty
# if systemctl -q is-active graphical.target && [[ ! $DISPLAY ]]; then
if systemctl -q is-active graphical.target && [[ ! $DISPLAY ]]; then
    exec startx
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
