#!/usr/bin/env perl
use strict;
use warnings;

my ($cipher, $key);

# Se till att allt är uppercase
$cipher = uc("Esp lydhpc td qzfcej ehz");
$key = 0;

# Anta att det är engelska
for $key (1..26){
	print "$key ";

	# ASCII 65 = A
	$key=$key - 65;

	# Handtera bokstäver var för sig
	foreach (split(//, $cipher)) {
		if($_ eq " ") {
			print " ";
		} else {
			# ord(A) = 65
			# chr(65) = A
			# mod 26 för att vi endast har 26 tecken i alfabetet som används
			print(chr(65 + (ord($_) - $key) % 26));
		}
	}
	print("\n");
}
