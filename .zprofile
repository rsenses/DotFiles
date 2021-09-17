export PATH="$PATH:~/.local/bin"
export PATH="$PATH:~/.composer/vendor/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin"
export PATH="$PATH:/usr/local/opt/grep/libexec/gnubin"
typeset -U PATH
eval "$(/usr/local/bin/brew shellenv)"

# z beats cd most of the time. `brew install z`
if which brew > /dev/null; then
    zpath="$(brew --prefix)/etc/profile.d/z.sh"
    [ -s $zpath ] && source $zpath
fi;
