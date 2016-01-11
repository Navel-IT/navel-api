# Copyright 2015 Navel-IT
# navel-api-blueprints is developed by Yoann Le Garff, Nicolas Boquet and Yann Le Bras under GNU GPL v3

#-> BEGIN

#-> initialization

package Navel::API::Swagger2::Scheduler 0.1;

use strict;
use warnings;

use parent qw/
    Navel::Base
    Navel::Base::API::Swagger2
/;

our $SPEC_FILE = 'navel-scheduler-swagger2.json';

#-> methods

sub new {
    shift->SUPER::new($SPEC_FILE);
}

# sub AUTOLOAD {}

# sub DESTROY {}

1;

#-> END

__END__

=pod

=encoding utf8

=head1 NAME

Navel::API::Swagger2::Scheduler

=head1 AUTHOR

Yoann Le Garff, Nicolas Boquet and Yann Le Bras

=head1 LICENSE

GNU GPL v3

=cut


