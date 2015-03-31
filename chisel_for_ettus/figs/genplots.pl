#!/usr/bin/perl                                                                                                                                                                   

use strict;
use warnings;
use feature 'say';

my @files = <*.svg>;
foreach my $file (@files) {
    (my $newfile = $file) =~ s/svg/pdf/;
    system("inkscape -A $newfile $file");
}
