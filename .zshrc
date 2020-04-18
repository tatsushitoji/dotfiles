# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
#   [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

# asdf
. /usr/local/opt/asdf/asdf.sh

export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/Cellar/git/2.5.0/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
zinit load momo-lab/zsh-abbrev-alias
# zinit load denysdovhan/spaceship-zsh-theme
zinit load zsh-users/zsh-syntax-highlighting
zinit load zsh-users/zsh-completions
zinit load zsh-users/zsh-autosuggestions
zinit load migutw42/zsh-fzf-ghq

zinit ice pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

### End of Zinit's installer chunk
export PATH="/usr/local/opt/gettext/bin:$PATH"
