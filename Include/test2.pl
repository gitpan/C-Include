use C::Include qw/test.h -cache/;
use strict;
use vars qw/$node $buffer/;
require 'hview.pl';

# Make struct instance
$node = INC->make_struct('Node');

# Fill struct fields
$$node{name} = 'Albert Michauer';
$$node{addr}{zone} = 2;
$$node{addr}{net}  = 5049;
$$node{addr}{node} = 80;
$$node{flags}{passive}   = 1;
$$node{flags}{umlautnet} = 1;

# Pack struct to buffer
$buffer = $node->pack();

# Print buffer to STDOUT
&hview( \$buffer );
