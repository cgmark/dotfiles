#!/bin/bash

DOTFILES="vimrc vim screenrc gitconfig ctags bashrc.ssh bashrc.aliases bashrc.functions bashrc.local"

for DOTFILE in $DOTFILES; do
    DST=$(readlink -f ~/.$DOTFILE)
    if [ -e "$DST" ]; then
        X=$(readlink -f $DOTFILE)
        Y=$(readlink -f $DST)
        if [ "$X" != "$Y" ]; then
            echo "move $DST out of the way"
            continue
        fi
    else
        ln -s $(readlink -f $DOTFILE) $DST
    fi
done

grep -q ".bashrc.local" ~/.bashrc || echo "[ -f ~/.bashrc.local ] && . ~/.bashrc.local" >> ~/.bashrc
