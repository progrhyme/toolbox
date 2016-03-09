#!/usr/bin/perl
use strict;

open(my $pout, '|bc') or die "Can't open pipe";
my $scale = $ENV{BC_SCALE} || 1;
print $pout "scale=$scale\n";
print $pout "@ARGV\n";
close($pout);
