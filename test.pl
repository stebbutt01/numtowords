#!/usr/bin/perl

#
#	The Program accepts the numbers whether as arguments or accepts the defaults
#	The program calls a perl module to process the passed values into words
#
#
#
#
#
#
#
#

use strict;
use warnings;
use Core::Towords ;

## accept the number if any
my $first_num = $ARGV[0] || 1;
my $second_num = $ARGV[1] || 100000 ;


my $tw = Core::Towords->new(fw => $first_num, sw => $second_num) ;
my $inwords = $tw->get_words() ; 


## I could use say instead of print
print " 		 First number in words $inwords->firstnumword} \n" ;
print "			Second number in words $inwords->{secondnumword} \n\n";

program "		Program Finished\n" ;
