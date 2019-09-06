export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/Cellar/git/2.5.0/bin:$PATH"

source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
zplugin load momo-lab/zsh-abbrev-alias
zplugin load denysdovhan/spaceship-zsh-theme
zplugin load zsh-users/zsh-syntax-highlighting
zplugin load zsh-users/zsh-completions
zplugin load zsh-users/zsh-autosuggestions

# zplugin ice pick'async.zsh' src'pure.zsh'
# zplugin light sindresorhus/pure

