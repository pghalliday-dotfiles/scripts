if [ "$1" == "HTTPS" ]; then
  GIT_PREFIX=https://github.com/
else
  GIT_PREFIX=git@github.com:
fi

function clone_or_pull {
  repo=$1
  echo "setting up $repo"
  if [ ! -d ~/$repo ]; then
    cd ~
    git clone --recursive ${GIT_PREFIX}pghalliday-dotfiles/${repo}.git
  else
    cd ~/$repo
    git pull && git submodule init && git submodule update && git submodule status
  fi
  if [ -d "~/$repo/dotfiles" ]; then
    shopt -s dotglob
    cp -rf ~/$repo/dotfiles/* ~
  fi
}
