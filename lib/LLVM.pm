package LLVM;
{
  $LLVM::VERSION = '0.01';
}

use strict;
use warnings;

require XSLoader;
XSLoader::load('LLVM', $LLVM::VERSION);

=head1 NAME

LLVM - Perl bindings to the Low Level Virtual Machine

=head1 VERSION

version 0.01

=head1 SYNOPSIS

    use LLVM;

    # create a new LLVM context and a module named "synopsis"
    my $ctx = LLVM::Context -> new;
    my $mod = LLVM::Module -> new($ctx, "synopsis");

    # create a new function type that takes 2 ints and returns one int
    my $intt = LLVM::Type -> int($ctx);
    my $funt = LLVM::Type -> func($intt, $intt, $intt);

    # add a new functionto the module with the just-created type
    my $fun = $mod -> add_func("add", $funt);

    # set function's parameters names
    my $params = $fun -> func_params;

    $params -> [0] -> set_name("x");
    $params -> [1] -> set_name("y");

    # create a new entry block for the "add" function and its builder
    my $blk = $fun -> func_append($ctx, "entry");
    my $bld = LLVM::Builder -> new($ctx, $blk);

    # create an "add" intruction and use its return value as function return
    my $tmp = $bld -> add($params -> [0], $params -> [1], "tmp");
    $bld -> ret($tmp);

    # dump the LLVM IR to stderr
    $mod -> dump;

The output should look like this:

    ; ModuleID = 'synopsis'

    define i32 @add(i32 %x, i32 %y) {
    entry:
      %tmp = add i32 %x, %y
      ret i32 %tmp
    }

=head1 DESCRIPTION

The Low-Level Virtual Machine (LLVM) is a collection of libraries and tools
that make it easy to build compilers, optimizers, Just-In-Time code generators,
and many other compiler-related programs.

This module provides Perl bindings to the LLVM API.

=head1 AUTHOR

Alessandro Ghedini <alexbio@cpan.org>

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Alessandro Ghedini.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of LLVM
