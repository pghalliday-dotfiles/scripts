DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/shared.sh

clone_or_pull .xinit
clone_or_pull .xmonad
