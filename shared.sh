DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$1" == "HTTPS" ]; then
  GIT_PREFIX=https://github.com/
else
  GIT_PREFIX=git@github.com:
fi

function clone_or_pull {
  repo=$1
  dir=$2
  conf=$3
  src=$4
  conf_contents=$5
  echo "setting up $repo"
  if [ ! -d ~/$dir ]; then
    git clone --recursive ${GIT_PREFIX}pghalliday-dotfiles/${repo}.git ~/$dir
  else
    cd ~/$dir
    git pull && git submodule init && git submodule update && git submodule status
  fi
  if [ -n "$conf" ]; then
    if [ -n "$conf_contents" ]; then
      cp -f $DIR/$conf_contents ~/$conf
    else
      echo "source ~/$dir/$src" > ~/$conf
    fi
  fi
}
