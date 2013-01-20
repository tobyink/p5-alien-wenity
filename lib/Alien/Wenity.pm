package Alien::Wenity;

use 5.008;
use strict;
use warnings;

BEGIN {
	$Alien::Wenity::AUTHORITY = 'cpan:TOBYINK';
	$Alien::Wenity::VERSION   = '0.000_01';
}

use File::ShareDir ':ALL';

sub path {
	my $class = shift;
	dist_file('Alien-Wenity', 'Wenity.exe');
}

1;

__END__

=head1 NAME

Alien::Wenity - install Wenity command-line tool

=head1 DESCRIPTION

Wenity is a Zenity-like tool for Windows.

=head2 Methods

=over

=item C<< path >>

Returns path to the Wenity binary.

=item C<< command(@arguments) >>

Calls Wenity with the given arguments. Will automatially run it via
Wine on non-Windows systems.

=back

=head1 BUGS

Please report any bugs to
L<http://rt.cpan.org/Dist/Display.html?Queue=Alien-Wenity>.

=head1 SEE ALSO

L<https://bitbucket.org/tobyink/vb-wenity>,
L<http://enwp.org/Zenity>.

=head1 AUTHOR

Toby Inkster E<lt>tobyink@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2013 by Toby Inkster.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DISCLAIMER OF WARRANTIES

THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

