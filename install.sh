if [[ -L ~/.vimrc ]]; then
    echo "Already Symlinked"
else
    echo "Creating Symlink"
    mv ~/.vimrc ~/.vimrc.old
    ln -s ~/.vim/.vimrc ~/.vimrc
fi

cd ~/.vim
echo "Installing Plugins"
vim +PlugInstall +qall
vim +CocInstall coc-phpactor +qall
