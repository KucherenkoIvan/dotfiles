#!/bin/zsh
#==============
# Variables
#==============
dotfiles_dir=~/.dotfiles

#==============
# Delete existing dot files and folders
#==============
rm -rf ~/.bashrc > /dev/null 2>&1
rm -rf ~/.tmux.conf > /dev/null 2>&1
rm -rf ~/.zshrc > /dev/null 2>&1
rm -rf ~/.gitconfig > /dev/null 2>&1
rm -rf ~/.profile > /dev/null 2>&1
rm -rf ~/package.json > /dev/null 2>&1
rm -rf ~/package-lock.json > /dev/null 2>&1
rm -rf ~/eslint.config.js > /dev/null 2>&1
rm -rf ~/prettier.config.js > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
ln -sf $dotfiles_dir/.bashrc ~/.bashrc
ln -sf $dotfiles_dir/.tmux.conf ~/.tmux.conf
ln -sf $dotfiles_dir/.zshrc ~/.zshrc
ln -sf $dotfiles_dir/.gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/.profile ~/.profile
ln -sf $dotfiles_dir/package.json ~/package.json
ln -sf $dotfiles_dir/package-lock.json ~/package-lock.json
ln -sf $dotfiles_dir/eslint.config.js ~/eslint.config.js
ln -sf $dotfiles_dir/prettier.config.js ~/prettier.config.js

#==============
# Configure nodejs dependencies
#==============
npm i -D eslint prettier eslint-plugin-prettier eslint-config-prettier eslint-plugin-node eslint-config-node
npx install-peerdeps --dev eslint-config-airbnb
