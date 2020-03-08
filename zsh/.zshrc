export ZSH=/home/shubhendu/.oh-my-zsh
export KUBE_EDITOR="code -w -"
export GOPATH=/home/shubhendu/go
export GOROOT=/usr/bin/go
export PYENV_ROOT="$HOME/.pyenv"
export NVM_DIR="$HOME/.nvm"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:$GOROOT/bin"

ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_USER_SHOW=always
SPACESHIP_BATTERY_THRESHOLD=30

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  node
  docker
  kubectl
  npm
)

source $ZSH/oh-my-zsh.sh

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ $- == *i* ]] && source "/home/shubhendu/.fzf/shell/completion.zsh" 2> /dev/null
source "/home/shubhendu/.fzf/shell/key-bindings.zsh"
source ~/.rvm/scripts/rvm

#pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv init -)"

#nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
