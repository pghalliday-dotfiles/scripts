DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/shared.sh

clone_or_pull \
  bash \
  .bash \
  .bashrc \
  config.sh

clone_or_pull \
  tmux \
  .tmux \
  .tmux.conf \
  config.conf

clone_or_pull \
  vim \
  .vim \
  .vimrc \
  config.vim
