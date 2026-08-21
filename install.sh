#!/bin/bash
set -e
set -u

if [ -d ~/.dotfiles ]; then
  read -p "The ~/.dotfiles directory already exists. Do you want to replace it? (y/n) " choice
  case "$choice" in
  y | Y) rm -rf ~/.dotfiles ;;
  n | N) exit 1 ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
  esac
fi

git clone https://github.com/solumath/.dotfiles.git ~/.dotfiles

mkdir -p ~/.config/lazygit
ln -sf $(realpath ~/.dotfiles/lazygit/config.yml) ~/.config/lazygit/config.yml

ln -sf $(realpath ~/.dotfiles/git/.gitconfig) ~/.gitconfig
ln -sf $(realpath ~/.dotfiles/git/.gitignore_global) ~/.gitignore_global
ln -sf $(realpath ~/.dotfiles/zsh/.zshrc) ~/.zshrc
ln -sf $(realpath ~/.dotfiles/zsh/.p10k.zsh) ~/.p10k.zsh

# Initialize submodules
cd ~/.dotfiles
git submodule update --init --recursive

# Add SSH keys, make sure to have correct permissions on ~/.ssh and ~/.ssh/authorized_keys
mkdir -p ~/.ssh
chmod 700 ~/.ssh
curl https://github.com/solumath.keys | tee -a ~/.ssh/authorized_keys
curl https://github.com/dfajmon.keys | tee -a ~/.ssh/authorized_keys
