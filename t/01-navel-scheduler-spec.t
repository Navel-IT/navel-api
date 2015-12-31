# Copyright 2015 Navel-IT
# navel-api-blueprints is developed by Yoann Le Garff, Nicolas Boquet and Yann Le Bras under GNU GPL v3

#-> BEGIN

#-> initialization

use strict;
use warnings;

use Test::More tests => 2;
use Test::Exception;
use Test::File::ShareDir -share => {
    -dist => {
        'Navel-API' => 'share'
    }
};

BEGIN {
    use_ok('Navel::API::Swagger2::Scheduler');
}

#-> main

lives_ok {
    Navel::API::Swagger2::Scheduler->new();
} 'loading navel-scheduler spec';

#-> END

__END__

