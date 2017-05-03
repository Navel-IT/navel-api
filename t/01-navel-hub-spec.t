# Copyright (C) 2015-2017 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# navel-api is licensed under the Apache License, Version 2.0

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
    use_ok('Navel::API::OpenAPI::Hub');
}

#-> main

lives_ok {
    Navel::API::OpenAPI::Hub->new;
} 'loading navel-bub spec';

#-> END

__END__
