#!/bin/bash

. brew.sh
. dock.sh
. powerline.sh

sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

DOT_FILES=(.bashrc .zshrc .gitconfig .asdfrc)

for file in ${DOT_FILES[@]}

do
	if [ -a $HOME/$file ]; then
		echo "ファイルが存在するのでシンボリックリンクを貼りませんでした: $file"
	else
		ln -s $HOME/dotfiles/$file $HOME/$file
		echo "シンボリックリンクを貼りました: $file"
	fi
done

echo "Success! setup is finished."
