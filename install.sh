if [ -e ~/.gitconfig ]
then
  mv ~/.gitconfig ~/.gitconfig.back
fi

ln -sv ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -sv ~/.dotfiles/git/gitignore ~/.gitignore

if [ -e ~/.zshrc ]
then
  mv ~/.zshrc ~/.zshrc.back
fi

ln -sv ~/.dotfiles/zsh/.zshrc ~/.zshrc
