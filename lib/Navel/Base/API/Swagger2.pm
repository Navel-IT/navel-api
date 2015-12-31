# Copyright 2015 Navel-IT
# navel-api-blueprints is developed by Yoann Le Garff, Nicolas Boquet and Yann Le Bras under GNU GPL v3

#-> BEGIN

#-> initialization

package Navel::Base::API::Swagger2 0.1;

use strict;
use warnings;

use parent qw/
    Navel::Base
    Navel::Base::API
/;

use Swagger2;

use File::ShareDir 'dist_dir';

#-> methods

sub new {
    my $class = shift;

    Swagger2->new()->load(
        dist_dir($Navel::Base::API::DIST_DIR) . '/' . shift
    );
}

# sub AUTOLOAD {}

# sub DESTROY {}

1;

#-> END

__END__

=pod

=encoding utf8

=head1 NAME

Navel::Base::API::Swagger2

=head1 AUTHOR

Yoann Le Garff, Nicolas Boquet and Yann Le Bras

=head1 LICENSE

GNU GPL v3

=cut

