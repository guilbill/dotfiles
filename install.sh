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

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.local/share/fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
fc-cache -vf ~/.local/share/fonts/
ln -sv ~/.dotfiles/zsh/.zshrc ~/.zshrc
