#!/bin/sh
#
#  start irssi timer test
#

if [ $CI ]; then
	sudo apt-get --quiet install screen > /dev/null
	sudo apt-get --quiet install irssi > /dev/null
fi

TERM=vt100
export TERM

screen -S mytest -d -m irssi --home ./irssi-config/

sleep 10

cat test-script.log
