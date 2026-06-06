#!/bin/bash

# . brew.sh
# . dock.sh

DOT_FILES=(
  .zprofile
  .zshrc
  .gitconfig
  .hushlogin
)

CONFIG_FILES=(
  sheldon/plugins.toml
  # starship.toml
)

for file in "${DOT_FILES[@]}"; do
  ln -snf "$HOME/dotfiles/$file" "$HOME/$file"
  echo "linked $file"
done

for file in "${CONFIG_FILES[@]}"; do
  mkdir -p "$HOME/.config/$(dirname "$file")"
  ln -snf "$HOME/dotfiles/.config/$file" "$HOME/.config/$file"
  echo "linked .config/$file"
done

echo "Success! setup is finished."
