#!/bin/zsh
echo "Remove Doom"
rm -r  --interactive=never $HOME/.emacs.d $HOME/.doom.d

echo "Install zinit"
rm ~/.zshrc ~/.zpreztorc ~/.zlogin ~/.zlogout ~/.zprofile ~/.zshenv
git clone https://github.com/jandamm/zgenom.git "${HOME}/.zgenom"

ln ~/stevset/zsh/.zshrc ~/.zshrc 
ln ~/stevset/zsh/aliases.zsh ~/.zsh_aliases
source ~/.zshrc
