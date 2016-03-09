#!/usr/bin/env perl
use strict;
use strict;
use Time::HiRes qw(gettimeofday);

sub logger {
    my ( $epoc, $microsec ) = gettimeofday();
    my ( $sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst ) =
      localtime($epoc);
    $year += 1900;
    $mon  += 1;
    my $timestamp = sprintf( "[%04d/%02d/%02d %02d:%02d:%02d.%06d]",
        $year, $mon, $mday, $hour, $min, $sec, $microsec );
    print "$timestamp\t$_";
}

while (<>) {
    logger($_);
}

