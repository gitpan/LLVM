package LLVM::PassManager;
{
  $LLVM::PassManager::VERSION = '0.03';
}

use strict;
use warnings;

=head1 NAME

LLVM::PassManager - LLVM pass manager class

=head1 VERSION

version 0.03

=head1 DESCRIPTION

A C<LLVM::PassManager> holds and optimizes the  execution of passes. A pass
performs the transformations and optimizations that make up the compiler.

Have a look at L<LLVM::Transform> to see what passes are available.

=head1 METHODS

=head2 new( )

Create a new whole-module C<LLVM::PassManager>.

=head2 run( $mod )

Run all the passes scheduled on the given L<LLVM::Module>. Returns true if any
of the passes modified the module, false otherwise.

=for Pod::Coverage always_inliner argument_promotion constant_merge dead_arg_elimination function_attrs function_inlining global_dce global_optimizer internalize ip_constant_propagation ipsccp prune_eh strip_dead_prototypes strip_symbols

=head1 AUTHOR

Alessandro Ghedini <alexbio@cpan.org>

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Alessandro Ghedini.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of LLVM::PassManager
