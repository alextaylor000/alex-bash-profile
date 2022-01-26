set -e
set -x

echo "🛠 dotfiles install. Running as '$(whoami)'"
echo "\$HOME = $HOME"

echo "Installing neovim..."
sudo apt-get -y update && sudo apt-get -y install neovim

echo "Installing and configuring Vundle..."
git clone "https://github.com/VundleVim/Vundle.vim.git" "$HOME/.vim/bundle/Vundle.vim"
# nvim +PluginInstall +qall

echo "Symlinking dotfiles..."
mkdir -p "$HOME/.config/nvim"
ln -fs "$(pwd)/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim"
ln -fs "$(pwd)/.zshrc" "$HOME/.zshrc"
ln -fs "$(pwd)/.gitconfig" "$HOME/.gitconfig"

echo "Done! 🎉"


