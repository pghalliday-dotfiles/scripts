if [ "$1" == "HTTPS" ]; then
  GIT_PREFIX=https://github.com/
else
  GIT_PREFIX=git@github.com:
fi

function clone_or_pull {
  repo=$1
  if [ ! -d ~/$repo ]; then
    echo "cloning $repo"
    cd ~
    git clone --recursive ${GIT_PREFIX}pghalliday-dotfiles/${repo}.git
  else
    echo "updating $repo"
    cd ~/$repo
    git pull && git submodule init && git submodule update && git submodule status
  fi
  if [ -d ~/$repo/dotfiles ]; then
    echo "copying dotfiles into place"
    shopt -s dotglob
    cp -rvf ~/$repo/dotfiles/* ~
  fi
}
