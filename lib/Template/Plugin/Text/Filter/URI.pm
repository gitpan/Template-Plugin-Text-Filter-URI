package Template::Plugin::Text::Filter::URI;

use warnings;
use strict;

use base 'Template::Plugin';
use Text::Filter::URI qw( filter_uri );

=head1 NAME

Template::Plugin::Text::Filter::URI - Filter a string to meet URI requirements

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

  [% USE Text::Filter::URI %]
  <a href="/blog/[% "a string with föreign chäräcters" | uri %]">Link</a>

  # Output

  <a href="/blog/a-string-with-foreign-characters">Link</a>

This filter can be useful if you have a string which should be included in an url but contains illegal characters. 

See L<Text::Filter::URI> for more information on this process.

=cut

sub new {
  my ($self, $context) = @_;
  $context->define_filter('uri', \&filter_uri, '');
  return $self;
}


=head1 AUTHOR

Moritz Onken, C<< <onken at houseofdesign.de> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-template-plugin-text-filter-uri at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Template-Plugin-Text-Filter-URI>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Template::Plugin::Text::Filter::URI


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Template-Plugin-Text-Filter-URI>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Template-Plugin-Text-Filter-URI>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Template-Plugin-Text-Filter-URI>

=item * Search CPAN

L<http://search.cpan.org/dist/Template-Plugin-Text-Filter-URI/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2008 Moritz Onken, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Template::Plugin::Text::Filter::URI
