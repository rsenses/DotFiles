# Long format list
alias ls='ls --color=auto'
alias ll="ls -laF"
alias l='ls -CF'

# Print my public IP
alias myip='curl ipinfo.io/ip'

# NeoMutt
alias email='neomutt'

# Por seguridad
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias df='df -h' # human-readable sizes

# Alias para carpetas
alias md='mkdir -p'
alias rd='rmdir'

# CD
alias ..='cd ..'
alias ...='cd ../..'

# Colores
alias grep='grep --color=auto'

# TMUX
alias t=tmux

# Alias para repositorio Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Elige la carpeta de scrot
alias scrot='scrot ~/Imágenes/screenshots/%b%d-%H%M%S.png'
