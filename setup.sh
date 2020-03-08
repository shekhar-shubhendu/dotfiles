chsh -s $(which zsh)
echo "✔ zsh as default shell"

# install fzf
[ -d ~/.fzf ] || (
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 
    && ~/.fzf/install --no-key-bindings --no-completion --no-update-rc
)
exho "✔ installed fzf"

# install pyenv and nvm
[ -d  ~/.pyenv ] || git clone https://github.com/pyenv/pyenv.git ~/.pyenv
[ -d ~/.nvm ] || (
    export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"
)
exho "✔ installed pyenv and nvm"

# insall powerline fonts
(
    git clone https://github.com/powerline/fonts.git --depth=1 ~/.powerline
    && ~/.powerline/install.sh
    && rm -rf ~/.powerline
)

# install oh-my-zsh
[ -d ~/.oh-my-zsh ] || git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
[ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ] || git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# synlink oh-my-zsh theme
mkdir -p ~/.oh-my-zsh && mkdir -p ~/.oh-my-zsh/themes
ln -sf $(pwd)/zsh/themes/spaceship.zsh-theme ~/.oh-my-zsh/themes/spaceship.zsh-theme
echo "✔ oh my zsh configured!"

ln -sf $(pwd)/zsh/.zshrc ~/.zshrc
echo "✔ .zshrc symlinked"
