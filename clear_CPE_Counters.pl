#!usr/bin/perl

#TODO:
#Investigate possible different format for Serial / T1
#Input validation
#Check if confirmation is needed

use strict;

my $numberOfPairs;
my $serviceType;

sub serial {
  foreach my $i (0..$numberOfPairs) {
    print "clear counters Serial 0/$i\n";
    print "\n";
  }
};
sub t1;
sub dsl {
  foreach my $i (1..$numberOfPairs) {
  print "clear counters $serviceType 1/0/$i\n";
  }
};

print "How many pairs?\n";
chomp($numberOfPairs = <STDIN>);
print "What is the service type - e.g. adsl, shdsl, vdsl, t1, serial:\n";
chomp($serviceType = <STDIN>);

if ($serviceType =~ m/s(?i)erial/) {
  serial;
}
elsif ($serviceType =~ m/adsl|vdsl|shdsl/i) {
  dsl;
};
