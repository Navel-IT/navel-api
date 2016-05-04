# Copyright (C) 2015 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# navel-api-blueprints is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

use strict;
use warnings;

use ExtUtils::MakeMaker 6.64;

use File::ShareDir::Install;

#-> main

my $min_perl_version = '5.18.0';

install_share('share');

WriteMakefile(
    NAME => 'Navel::API',
    VERSION_FROM => 'lib/Navel/API.pm',
    ABSTRACT => 'navel-api-blueprints',
    AUTHOR => 'Yoann Le Garff, Nicolas Boquet and Yann Le Bras',
    LICENSE => 'Apache License, Version 2.0',
    META_MERGE => {
        requires => {
            perl => $min_perl_version
        },
        resources => {
            license => 'http://www.apache.org/licenses/LICENSE-2.0.html',
            repository => 'http://github.com/Navel-IT/navel-api-blueprints'
        },
        no_index => {
            directory => ['t']
        }
    },
    MIN_PERL_VERSION => $min_perl_version,
    PREREQ_PM => {
        'Navel::Base' => 0,
        'Swagger2' => 0.77,
        'File::ShareDir' => 0
    },
    TEST_REQUIRES => {
        'Test::More' => 0,
        'Test::Exception' => 0,
        'Test::File::ShareDir' => 0
    },
    test => {
        TESTS => 't/*.t'
    }
);

package MY;

use File::ShareDir::Install 'postamble';

#-> END

__END__
