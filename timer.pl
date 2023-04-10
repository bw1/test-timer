#!/usr/bin/perl
#
#  Timer
#
use strict;

local $SIG{ALRM} = sub {
	die "alarm\n";
};

alarm 10;

while ( 1==1 ) {
	sleep 1;
	print "run\n";
}
