#!/usr/bin/env bash
# files to install in home dir
FILES=(.aliases .bash_profile .bash_prompt .bashrc .functions .inputrc .path)
# source of files to install
DOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# create backup directory
mkdir ~/.dotfiles_bak.d

echo "Installing DotFiles"
for file in ${FILES[*]}; do
    # make backup, if no backup exists already
    cp -n ~/"$file" ~/dotfiles_bak.d/"$file"
    # remove old dotfile
    rm -rf ~/"$file"
    # insert new dotfile
    ln -nfs "$DOTDIR"/"$file" ~/
done
