DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/shared.sh

clone_or_pull \
  xinit \
  .xinit \
  .xinitrc \
  config.sh

clone_or_pull \
  xmonad \
  .xmonad
