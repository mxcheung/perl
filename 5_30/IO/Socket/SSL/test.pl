use strict;
use IO::Socket::SSL;
 
# simple client
my $cl = IO::Socket::SSL->new('www.google.com:443');
print $cl "GET / HTTP/1.0\r\n\r\n";
print <$cl>;
 
# simple server
my $srv = IO::Socket::SSL->new(
    LocalAddr => '0.0.0.0:1234',
    Listen => 10,
    SSL_cert_file => 'server-cert.pem',
    SSL_key_file => 'server-key.pem',
);
$srv->accept;