# Copyright 2015 Navel-IT
# navel-api-blueprints is developed by Yoann Le Garff, Nicolas Boquet and Yann Le Bras under GNU GPL v3

#-> BEGIN

#-> initialization

package Navel::Base::API::Swagger2 0.1;

use Navel::Base;

use parent 'Navel::Base::API';

use Swagger2 0.73;

use File::ShareDir 'dist_dir';

use Navel::Utils 'croak';

#-> methods

sub spec_file_location {
    my ($class, $spec_filename) = @_;

    croak('spec_filename must be defined') unless defined $spec_filename;

    dist_dir($Navel::Base::API::DIST_DIRNAME) . '/' . $spec_filename;
}

sub new {
    my $class = shift;

    Swagger2->new()->load(
        $class->spec_file_location(shift)
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
