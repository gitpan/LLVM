package LLVM::Context;
{
  $LLVM::Context::VERSION = '0.05';
}

use strict;
use warnings;

=head1 NAME

LLVM::Context - LLVM context class

=head1 VERSION

version 0.05

=head1 DESCRIPTION

A C<LLVM::Context> is the top-level container for all LLVM global data.

=head1 METHODS

=head2 new( )

Create a new C<LLVM::Context> object.

=head1 AUTHOR

Alessandro Ghedini <alexbio@cpan.org>

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Alessandro Ghedini.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of LLVM::Context