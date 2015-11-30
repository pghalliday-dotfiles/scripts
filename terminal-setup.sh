function clone_or_pull {
  repo=$1
  dir=$2
  conf=$3
  src=$4
  if [ -d "$dir" ]; then
    git clone --recursive "git@github.com:pghalliday-dotfiles/$repo.git" "$dir"
    echo "source \"~/$dir/$src\"" > "~/$conf"
  else
    cd "~/$dir"
    git pull && git submodule init && git submodule update && git submodule status
  fi
}

clone_or_pull \
  bash \
  .bash \
  .bashrc \
  config.sh

clone_or_pull \
  tmux \
  .tmux \
  .tmus.conf \
  config.conf

clone_or_pull \
  vim \
  .vim \
  .vimrc \
  config.vim