package LLVM::Value;
{
  $LLVM::Value::VERSION = '0.03';
}

use strict;
use warnings;

=head1 NAME

LLVM::Value - LLVM value class

=head1 VERSION

version 0.03

=head1 DESCRIPTION

A C<LLVM::Value> represents an individual value in the LLVM IR.

=head1 METHODS

=head2 type( )

Retrieve the L<LLVM::Type> of the given C<LLVM::Value>.

=head2 set_name( $val_name)

Set the name of the given C<LLVM::Value> to the C<$val_name> string.

=head2 func_params( )

Retrieve the C<LLVM::Value>s of the paramenters of the given C<LLVM::Type>
representing a function.

=head2 func_append( $ctx, $blk_name )

Append a L<LLVM::BasicBlock> with name C<$blk_name> to the given C<LLVM::Type>
representing a function.

=head1 AUTHOR

Alessandro Ghedini <alexbio@cpan.org>

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Alessandro Ghedini.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of LLVM::Value
