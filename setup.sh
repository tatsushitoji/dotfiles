#!/bin/bash

# . brew.sh
# . dock.sh

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

DOT_FILES=(.bashrc .zshrc .gitconfig .asdfrc .hushlogin)

for file in ${DOT_FILES[@]}

do
	ln -s $HOME/dotfiles/$file $HOME/$file
	echo "シンボリックリンクを貼りました: $file"
done

echo "Success! setup is finished."
