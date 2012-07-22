package LLVM::Builder;
{
  $LLVM::Builder::VERSION = '0.02';
}

use strict;
use warnings;

=head1 NAME

LLVM::Builder - LLVM builder class

=head1 VERSION

version 0.02

=head1 DESCRIPTION

A C<LLVM::Builder> is the means of building instructions and represents a point
within a basic block.

=head1 METHODS

=head2 new( $ctx, $blk )

Create a new C<LLVM::Builder> object given a L<LLVM::Context> and a
L<LLVM::BasicBlock>.

=head1 TERMINATOR INSTRUCTIONS

See the L<LLVM reference|http://llvm.org/docs/LangRef.html#terminators> for more
information about the single instructions.

=head2 ret( $v )

Append a ret instruction to the block. This function takes a L<LLVM::Value>
representing the value to be returned and returns a L<LLVM::Value>.

=head1 BINARY OPERATIONS

The binary operations require two arguments of the same L<LLVM::Type> and
produce a single L<LLVM::Value>.

See the L<LLVM reference|http://llvm.org/docs/LangRef.html#binaryops> for more
information about the single instructions.

=head2 add( $lhs, $rhs, $name )

Append an integer add instruction to the block and name the result C<$name>.

=head2 fadd( $lhs, $rhs, $name )

Append a floating add instruction to the block and name the result C<$name>.

=head2 mul( $lhs, $rhs, $name )

Append a mul instruction to the block and name the result C<$name>.

=head2 fmul( $lhs, $rhs, $name )

Append a floating mul instruction to the block and name the result C<$name>.

=head2 sub( $lhs, $rhs, $name )

Append a sub instruction to the block and name the result C<$name>.

=head2 fsub( $lhs, $rhs, $name )

Append a floating sub instruction to the block and name the result C<$name>.

=head2 udiv( $lhs, $rhs, $name )

Append an unsigned div instruction to the block and name the result C<$name>.

=head2 sdiv( $lhs, $rhs, $name )

Append a signed div instruction to the block and name the result C<$name>.

=head2 fdiv( $lhs, $rhs, $name )

Append a floating div instruction to the block and name the result C<$name>.

=head1 BINARY BITWISE OPERATIONS

The binary bitwise operations require two arguments of the same L<LLVM::Type>
and produce a single L<LLVM::Value>.

See the L<LLVM reference|http://llvm.org/docs/LangRef.html#binaryops> for more
information about the single instructions.

=head2 shl( $lhs, $rhs, $name)

Append a shift left instruction to the block and name the result C<$name>.

=head2 lshr( $lhs, $rhs, $name)

Append a logical shift right instruction to the block and name the result C<$name>.

=head2 ashr( $lhs, $rhs, $name)

Append an arithmetic shift right instruction to the block and name the result C<$name>.

=head2 and( $lhs, $rhs, $name)

Append an and instruction to the block and name the result C<$name>.

=head2 or( $lhs, $rhs, $name)

Append an or instruction to the block and name the result C<$name>.

=head2 xor( $lhs, $rhs, $name)

Append a xor instruction to the block and name the result C<$name>.

=head1 AUTHOR

Alessandro Ghedini <alexbio@cpan.org>

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Alessandro Ghedini.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of LLVM::Builder