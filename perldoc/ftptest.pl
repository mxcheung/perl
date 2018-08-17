=pod

=head1 NAME

=head1 SYNOPSIS

script.pl
 
=head1 DESCRIPTION
 
This script can have 2 parameters. The name or address of a machine
and a command. It will execute the command on the given machine and
print the output to the screen.
 
Here are the key steps:

=over

=item 1 Step 1.

=item 2 Step 2.

=back

Things to note:

=over

=item * Point one

=item * Point two

=back

=head1 OPTIONS AND ARGUMENTS

=over

=item -b BRANCH

=back


=head1 VERSION

=head1 AUTHOR

=cut

#!/usr/bin/perl
use strict;
use warnings;

use File::Copy; 
use Net::FTP; 

my $ftp = undef;
my $username = 'dlpuser@dlptest.com';
my $password = '3D6XZV9MKdhM5fF';
my @lines = undef;
 
print "Here comes the code ... \n";
$ftp = Net::FTP->new("ftp.dlptest.com")    or die "Can't connect: $@\n";
$ftp->login($username, $password)       or die "Couldn't login\n";
@lines = $ftp->ls("/")
    or die "Can't get a list of files in /: $!";
foreach (@lines) {
  print "$_\n";
}