#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Aliases
alias brewup='sudo gem update `gem list | cut -d " " -f 1`; brew update; brew upgrade; brew cask upgrade; brew prune; brew cleanup; brew doctor; composer global update; npm update -g; zmanage update'
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias where=which # sometimes i forget
alias brwe=brew  #typos
alias hosts='sudo $EDITOR /etc/hosts'   # yes I occasionally 127.0.0.1 twitter.com ;)
alias ll='ls -lah'

# Paths
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# XDebug vs-code
export XDEBUG_CONFIG="idekey=VSCODE"
