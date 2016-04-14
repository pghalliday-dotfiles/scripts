DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/shared.sh

clone_or_pull .bash
clone_or_pull .tmux
clone_or_pull .vim
clone_or_pull .gitconfig.d
