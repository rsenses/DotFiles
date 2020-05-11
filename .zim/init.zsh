zimfw() { source /home/rsenses/.zim/zimfw.zsh "${@}" }
fpath=(/home/rsenses/.zim/modules/git/functions /home/rsenses/.zim/modules/utility/functions /home/rsenses/.zim/modules/git-info/functions ${fpath})
autoload -Uz git-alias-lookup git-branch-current git-branch-delete-interactive git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw coalesce git-action git-info
source /home/rsenses/.zim/modules/environment/init.zsh
source /home/rsenses/.zim/modules/git/init.zsh
source /home/rsenses/.zim/modules/input/init.zsh
source /home/rsenses/.zim/modules/termtitle/init.zsh
source /home/rsenses/.zim/modules/utility/init.zsh
source /home/rsenses/.zim/modules/dracula/dracula.zsh-theme
source /home/rsenses/.zim/modules/zsh-completions/zsh-completions.plugin.zsh
source /home/rsenses/.zim/modules/completion/init.zsh
source /home/rsenses/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/rsenses/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/rsenses/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh