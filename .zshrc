export ZSH=/home/shubhendu/.oh-my-zsh
export KUBE_EDITOR="code -w -"
export rvm_ignore_gemrc_issues=1
export GOPATH=/home/shubhendu/go
export GOROOT=/usr/bin/go
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$GOROOT/bin"

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_USER_SHOW=always
SPACESHIP_BATTERY_THRESHOLD=30

plugins=(
  git
  zsh-autosuggestions
  sudo
  node
  zsh-syntax-highlighting
  docker
  kubectl
  npm
)

source $ZSH/oh-my-zsh.sh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
source ~/.rvm/scripts/rvm

#pyenv

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv init -)"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
source /usr/share/nvm/init-nvm.sh

# added by travis gem
[ -f /home/shubhendu/.travis/travis.sh ] && source /home/shubhendu/.travis/travis.sh

