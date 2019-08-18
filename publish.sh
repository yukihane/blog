#!/bin/bash

set -eux

rm -r output
jbake -b
rsync -av -e ssh ./output/ himeji-cs@himeji-cs.jp:www/blog2
