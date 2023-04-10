#!/usr/bin/perl
#
#  Timer
#
use strict;

my $count=1;

local $SIG{ALRM} = sub {
	print "$count alarm\n";
	exit(0);
};

alarm 10;

while ( 1==1 ) {
	sleep 1;
	print "$count run\n";
	$count++;
}
