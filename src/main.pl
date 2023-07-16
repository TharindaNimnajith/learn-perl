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
my $name = 'Tharinda'; # default value of variable = undef
my ($age, $street, $abc) = (24, 'Galle'); # assign multiple values for scalar

# string interpolation and concatenation
my $my_info = "$name ($age) lives on \"$street\".\n";
printf $my_info;
$my_info = '$name ($age) lives on "$street".\n';
print $my_info, "\n";
# avoid escaping quotes with q{} for single quotes and qq{} for double quotes
$my_info = qq{$name ($age) lives on "$street".\n};
printf($my_info);

say $abc; # error - use of uninitialized value $abc in say ...

my ($_first, $_second) = 1;
say $_first; # 1
say $_second; # error - use of uninitialized value $second in say ...

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
say "Random 0 - 10 = ", int(rand 11); # random number between 0 and 10
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

# if, else if, else statements
# 0, 0.0, "0", undef, "" are considered to be false
# comparison operators [==, !=, <, <=, >, >=]
# boolean operators [!, &&, ||]

my ($var1, $var2, $var3, $var4, $var5, $var6, $var7) = (0, 0.0, "", '', " ", "0", undef);
say $var1;
say $var2;
say $var3;
say $var4;
say $var5;
say $var6;
say $var7; # error - use of uninitialized value $var6 in say ...

if ($var1) {
    say "1";
} else {
    say "2";
}

if ($var2) {
    say "1";
} else {
    say "2";
}

if ($var3) {
    say "1";
} else {
    say "2";
}

if ($var4) {
    say "1";
} else {
    say "2";
}

if ($var5) {
    say "1";
} else {
    say "2";
}

if ($var6) {
    say "1";
} else {
    say "2";
}

if ($var7) {
    say "1";
} else {
    say "2";
}

say(); # error - use of uninitialized value $_ in say ...

if (defined $var1) {
    say "1";
} else {
    say "2";
}

if (defined $var2) {
    say "1";
} else {
    say "2";
}

if (defined $var3) {
    say "1";
} else {
    say "2";
}

if (defined $var4) {
    say "1";
} else {
    say "2";
}

if (defined $var5) {
    say "1";
} else {
    say "2";
}

if (defined $var6) {
    say "1";
} else {
    say "2";
}

if (defined $var7) {
    say "1";
} else {
    say "2";
}

say ("");

if ("" eq "0") {
    say "1";
} else {
    say "2";
}

# error - argument "" isn't numeric in numeric eq (==) at ...
if ("" == "0") {
    say "1";
} else {
    say "2";
}

# error - argument "" isn't numeric in numeric eq (==) at ...
if ("" == 0) {
    say "1";
} else {
    say "2";
}

# error - argument "" isn't numeric in numeric eq (==) at ...
if ("" == 0.0) {
    say "1";
} else {
    say "2";
}

# error - argument "" isn't numeric in numeric eq (==) at ...
if ("" == '') {
    say "1";
} else {
    say "2";
}

if ("" eq '') {
    say "1";
} else {
    say "2";
}

# error - use of uninitialized value in numeric eq (==) at ...
# error - argument "" isn't numeric in numeric eq (==) at ...
if ("" == undef) {
    say "1";
} else {
    say "2";
}

# error - use of uninitialized value in numeric eq (==) at ...
if ("" eq undef) {
    say "1";
} else {
    say "2";
}

if ("" eq 0) {
    say "1";
} else {
    say "2";
}

say ("---");

$age = 90;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if ($age < 16) {
    say "you can't drive";
} elsif (!defined $is_not_intoxicated) {
    say "you can't drive";
} else {
    say "you can drive";
}

if (($age >= 1) && ($age < 16)) {
    say "you can't Drive";
} elsif (!defined $is_not_intoxicated) {
    say "you can't drive";
} elsif (($age >= 80) && (($age > 100) || (($age - $age_last_exam) > 5))) {
    say "you can't drive";
} else {
    say "you can drive";
}

# comparison operators for strings [eq, ne, lt, le, gt, ge]

if ('abc' eq 'abc') {
    say "abc == abc";
} else {
    say "abc != abc";
}

if ('abc' ne 'xyz') {
    say "abc != xyz";
} else {
    say "abc == xyz";
}

if ('a' lt 'z') {
    say "a < z";
} else {
    say "a >= z";
}

if ('a' ge 'z') {
    say "a >= z";
} else {
    say "a < z";
}

if ('a' ge 'a') {
    say "a >= a";
} else {
    say "a < a";
}

# unless is the opposite of if
unless (!defined $is_not_intoxicated) {
    say "get sober";
}

# ternary operator returns different values depending on a condition
say(($age > 18) ? "can vote" : "can't vote");

# for loop
for (my $i = 0; $i < 10; $i++) {
    say $i;
}

# while loop
my $i = 1;

while ($i < 10) {
    if ($i % 2 == 0) {
        $i++;
        next; # continue
    }

    if ($i == 7) {
        last; # break
    }

    say $i;

    $i++;
}

# do while loop
my $lucky_num = 7;
my $guess;

do {
    say "Guess a Number Between 1 and 10:";
    $guess = <STDIN>; # user input
} while $guess != $lucky_num;

say "You guessed $lucky_num";

# given when (switch) statement
my $age_old = 18;

given ($age_old) {
    when ($_ > 16) {
        say "1";
        continue; # continue with next cases
    }
    when (17) {
        say "2";
        continue;
    }
    when (18) {
        say "3";
        continue;
    }
    when ("18") {
        say "4";
        continue;
    }
    when ($_ = "18") {
        say "5";
        continue;
    }
    when ($_ = 18) {
        say "6";
        continue;
    }
    when ($_ > 17) {
        say "7";
    }
    when ($_ > 17) {
        say "8";
    }
    default {
        say "9";
    }
}

# strings

my $long_string = "Random long string";
say "Length of string = ", length $long_string;

# index returns the location of a String
printf("Long is at %d \n", index $long_string, "long");

# rindex returns the last occurrence
printf("Last g is at %d \n", rindex $long_string, "g");

# . concatenates multiple strings
$long_string = $long_string . ' isn\'t that' . ' long';
say $long_string;

# substr
my $s = "The black cat climbed the green tree";
say substr $s, 4, 5; # black
say substr $s, 4, -11; # black cat climbed the
say substr $s, 14; # climbed the green tree
say substr $s, -4; # tree
say substr $s, -4, 2; # tr

my $animal = "animals";

# chop deletes and returns the last character
printf("Last character is %s \n", chop $animal);
printf("Second last character is %s \n", chop $animal);
say $animal;

# chomp deletes the last newline
my $no_newline = "No newline\n";
say $no_newline;
chomp $no_newline;
say $no_newline;

# uppercase and lowercase functions

printf("Uppercase : %s \n", uc $long_string);
printf("Lowercase : %s \n", lc $long_string);

$long_string = "random long string";
printf("Uppercase first : %s \n", ucfirst $long_string); # title case
