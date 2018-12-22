#!/bin/bash
#supposed to be executed from current directory
cat ~/.bashrc | grep -q ownrc || echo "source $(pwd)/ownrc" >> ~/.bashrc
exportpathcmd="export PATH="$PATH:$(pwd)""
cat ~/.bashrc | grep -q "PATH.*scripts" || echo $exportpathcmd >> ~/.bashrc
source ~/.bashrc
[[ -L ~/.gitconfig ]] || [[ -f ~/.gitconfig ]] || ln -s $(pwd)/gitconfig ~/.gitconfig
