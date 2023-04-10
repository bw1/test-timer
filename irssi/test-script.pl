use strict;
use warnings;
use Irssi;

use vars qw($VERSION %IRSSI);
$VERSION = '0.1';
%IRSSI = (
    authors     => 'bw1',
    contact     => 'bw1@aol.at',
    name        => 'test-script',
    description => 'helper script for test',
    license     => 'GPLv2',
    url         => 'http://scripts.irssi.org/',
    changed     => $VERSION,
);

my $count=1;
sub myquit {
	my ( $s )=@_;
	Irssi::print("test-script: ".$s, MSGLEVEL_CRAP);
	Irssi::command("quit $s");
}

sub beep {
	Irssi::print("beep $count", MSGLEVEL_CRAP);
	$count++;
}

Irssi::print("test-script: perl_version: $^V", MSGLEVEL_CRAP);

Irssi::print("test-script: start timeout", MSGLEVEL_CRAP);

Irssi::timeout_add(1000, \&beep, '');
Irssi::timeout_add_once(5000, \&myquit, 'timeout');
