# Copyright (C) 2015-2016 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# navel-api is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

package Navel::API::Swagger2::Scheduler 0.1;

use Navel::Base;

use parent 'Navel::Base::API::Swagger2';

#-> class variables

our $SPEC_FILENAME = 'navel-scheduler-swagger2.json';

#-> methods

sub spec_file_location {
    shift->SUPER::spec_file_location($SPEC_FILENAME);
}

sub new {
    shift->SUPER::new($SPEC_FILENAME);
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

=head1 COPYRIGHT

Copyright (C) 2015-2016 Yoann Le Garff, Nicolas Boquet and Yann Le Bras

=head1 LICENSE

navel-api is licensed under the Apache License, Version 2.0

=cut
