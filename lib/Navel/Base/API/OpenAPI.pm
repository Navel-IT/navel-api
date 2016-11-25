# Copyright (C) 2015-2016 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# navel-api is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

package Navel::Base::API::OpenAPI 0.1;

use Navel::Base;

use parent 'Navel::Base::API';

use JSON::Validator::OpenAPI;

use File::ShareDir 'dist_dir';

use Navel::Utils 'croak';

#-> methods

sub spec_file_location {
    my ($class, $spec_filename) = @_;

    croak('spec_filename must be defined') unless defined $spec_filename;

    dist_dir($Navel::Base::API::DIST_DIRNAME) . '/' . $spec_filename;
}

sub new {
    JSON::Validator::OpenAPI->new->load_and_validate_spec(
        shift->spec_file_location(shift)
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

Navel::Base::API::OpenAPI

=head1 COPYRIGHT

Copyright (C) 2015-2016 Yoann Le Garff, Nicolas Boquet and Yann Le Bras

=head1 LICENSE

navel-api is licensed under the Apache License, Version 2.0

=cut
