#! /bin/sh

set -ex

gnulib-tool --import gendocs
aclocal
autoheader

# Automake is unhappy without NEWS and README, but we don't have any
touch NEWS README
automake -a -c -f

autoconf

exit 0
