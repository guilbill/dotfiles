if [ -e ~/.gitconfig ]
then
  mv ~/.gitconfig ~/.gitconfig.back
fi

ln -sv ~/.dotfiles/git/gitconfig ~/.gitconfig
