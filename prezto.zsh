#!/bin/zsh
#Initializes Prezto

# Clone Prezto
git clone --recursive https://github.com/steveokard/prezto.git "${ZDOTDIR:-$HOME}/stevset/prezto/.zprezto"
#Make Environment Links, per github readme
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/stevset/prezto/.zprezto/runcoms/^README.md(.N); do
	  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done

