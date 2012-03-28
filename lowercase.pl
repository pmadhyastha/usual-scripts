#!/usr/bin/perl 
use strict; 
use warnings; 
use vars qw/ %opt /;

my (@F, $lc);

sub init(){
    use Getopt::Std;
    my $opt_string = 'sc';
    getopts($opt_string, \%opt );
}

sub simple{
    while(<>){
        print lc;
    }
}

sub column{
    while (<>){
        chomp;
        @F = split("\t", $_);
        $F[1] = lc($F[1]);
        print join("\t",@F)."\n";
    }
}

init();
simple() if $opt{s};
column() if $opt{c};
