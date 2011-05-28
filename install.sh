#~/bin/sh
# Run this in the same 
find . -type f -iname ".*" | xargs -n 1 -I % ln -s `basename %` ~
