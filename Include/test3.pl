use C::Include qw/test.h -cache/;
use strict;
use vars qw/$node $buffer/;
require 'hview.pl';

# Make struct instance
$node = INC->make_struct('Node');

$buffer = unpack 'u', <<'DATA';
M`@"Y$U`````````````````````1````````````````````````````````
M``````````````````!!;&)E<G0@36EC:&%U97(`````````````````````
DATA


print "Example of usage unpack/pack\n";

# Unpack uuencoded buffer to struct
$node->unpack( $buffer );

# Pack struct to buffer
$buffer = $node->pack();

# Print buffer to STDOUT
&hview( \$buffer );
