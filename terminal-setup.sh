#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/shared.sh

clone_or_pull .oh-my-zsh
clone_or_pull .p10k
clone_or_pull .zsh
clone_or_pull .bash
clone_or_pull .tmux
clone_or_pull .vim
clone_or_pull .gitconfig.d
