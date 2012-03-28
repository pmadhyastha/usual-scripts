#!/usr/bin/perl

#Script for conversion from Penn treebank (raw format) to word/TAG format. 
#Install  Lingua::Treebank from cpan

use Lingua::Treebank;
use strict;
use warnings;
my ($filename);


chomp($filename=$ARGV[0]);


my @sentences = Lingua::Treebank->from_penn_file($filename);

foreach (@sentences) {
  foreach ($_->get_all_terminals) {
    print $_->word(), "/", $_->tag(), "\n";
  }

  print "\n\n";

}
