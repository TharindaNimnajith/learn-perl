#!/usr/bin/perl

# define pragmas to force to write good code and to provide info on how to correct errors
use strict;
use warnings;
use diagnostics;

use feature 'say'; # say prints a line followed by a newline
use feature "switch"; # use a perl version of switch called given when

use v5.32.1; # use perl version 5.32.1

print "Hello World!\n";

# data types:
# 1. scalars
# 2. arrays
# 3. hashes

# scalars

# variable must start with a letter or _ and then numbers can be added there after
# scalars can contain strings or numbers
my $name = 'Tharinda'; # default value of variable = undefined
my ($age, $street) = (24, 'Galle'); # assign multiple values for scalar

# string interpolation and concatenation
my $my_info = "$name ($age) lives on \"$street\".\n";
printf $my_info;
$my_info = '$name ($age) lives on "$street".\n';
print $my_info, "\n";
# avoid escaping quotes with q{} for single quotes and qq{} for double quotes
$my_info = qq{$name ($age) lives on "$street".\n};
printf($my_info);

# define a long string over multiple lines
my $info = <<"END";
This is a
bunch of information
on multiple lines
END
say $info; # say ends the line with a newline
print($name, "\n");

my $big_int = 18446744073709551615; # the largest integer

# formatted strings by defining the data type after %
# %c : character
# %s : string
# %d : decimal
# %u : unsigned integer
# %f : floating point (decimal notation)
# %e : floating point (scientific notation)
printf("%u \n", $big_int);
printf("%u \n", $big_int + 1);
printf("%u \n", $big_int + 100);

my $big_float = .11111111111111111111; # can trust upto 16 digits of precision for floats on most machines
printf("%.14f \n", $big_float + $big_float); # define the decimal precision amount
printf("%.16f \n", $big_float + $big_float);
printf("%.17f \n", $big_float + $big_float);
printf("%.20f \n", $big_float + $big_float);
printf("%.21f \n", $big_float + $big_float);

# switch values of scalars
my $first = 1;
my $second = 2;
say "$first $second";
($first, $second) = ($second, $first);
say "$first $second";

# basic math operations
say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 = ", 5 ** 4;

# built in math functions
say "EXP 1 = ", exp 1; # e to the power of 1
say "HEX 10 = ", hex 10; # convert hexadecimal 10 to decimal
say "OCT 10 = ", oct 10; # convert octal 10 to decimal
say "INT 6.45 = ", int(6.45); # truncate decimal places
say "LOG 2.7 = ", log 2.7; # ln(2.7)
say "Random between 0 - 10 = ", int(rand 11); # random number between 0 and 10
say "SQRT 9 = ", sqrt 9; # square root of 9

# assignment operators [+=, -=, *=, /=]
my $rand_num = 5;
$rand_num += 2;
say $rand_num;
$rand_num -= 2;
say $rand_num;
$rand_num *= 2;
say $rand_num;
$rand_num /= 2;
say $rand_num;

# increment and decrement
say $rand_num++;
say ++$rand_num;
say $rand_num--;
say --$rand_num;

# order of operations
say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;
