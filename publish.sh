#!/bin/bash

set -eux

if [ -d output ]; then
  rm -r output
fi
jbake -b
rsync -av -e ssh ./output/ himeji-cs@himeji-cs.jp:www/blog2
