#!/usr/bin/python

# This script symlinks everything from $TOPATH (default: ./dotfiles/) into
# $FROMPATH (default: $HOME). Anything that would be overwritten is copied into
# $BACKUP (default: $FROMPATH/backup/).

# Basically you put your dotfiles in ./dotfiles/dot/, in the same structure they
# were in relative to $HOME. Then if you want to edit your .bashrc (for
# example) you just edit ~/.bashrc, and as it's a symlink it'll actually edit
# dotfiles/.bashrc. Then you can add and commit that change.

import os

print(os.environ['HOME'])

# TODO Colors script


def mkdir(path):
    os.makedirs(path, 0o777, True)


# Where you keep your dotfiles, overwrite if necessary.
FROMPATH = "$HOME"
BACKUP = "$FROMPATH/backup"  # Place to back up old files.
# TODO if FROMPATH is not set, where does this set?
mkdir(os.environ['BACKUP'])
