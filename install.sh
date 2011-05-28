#~/bin/sh
find . -type f -iname ".*" | xargs -n 1 -I % ln -s % ~/
