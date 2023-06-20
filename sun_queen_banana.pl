#!/usr/bin/perl

# Use the library module for easy access to basic functions
use strict;
use warnings;

# Initialize an array to hold the goals that will be printed
my @goals;

# Set up the goals that will be printed
push @goals, "Dedicating time to developing and promoting technology";
push @goals, "Improve safety standards";
push @goals, "Strengthen the global economy";
push @goals, "Facilitate education and access to information";
push @goals, "Promote openness and transparency";
push @goals, "Foster a global community";
push @goals, "Support responsible business growth";
push @goals, "Encourage innovation and creativity";

#Start of the message
print "\nBuilding a Brighter Future\n\n";

# Print out each goal with increasing numbering
for (my $i = 0; $i < @goals; $i++) {
	print ($i + 1).". ".$goals[$i]."\n";
}

# End of the message
print "\nWith hard work and dedication, these goals can be attained. Together we can create a brighter, stronger future.\n\n";