# Copyright (C) 2015-2016 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# navel-api is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

use strict;
use warnings;

use ExtUtils::MakeMaker;

use File::ShareDir::Install;

#-> main

my $min_perl_version = '5.18.0';

install_share('share');

WriteMakefile(
    NAME => 'Navel::API',
    VERSION_FROM => 'lib/Navel/API.pm',
    ABSTRACT => 'navel-api',
    AUTHOR => 'Yoann Le Garff, Nicolas Boquet and Yann Le Bras',
    LICENSE => 'apache_2_0',
    META_MERGE => {
        requires => {
            perl => $min_perl_version
        },
        resources => {
            license => 'http://www.apache.org/licenses/LICENSE-2.0.html',
            repository => 'http://github.com/Navel-IT/navel-api'
        }
    },
    MIN_PERL_VERSION => $min_perl_version,
    PREREQ_PM => {
        'Navel::Base' => 0,
        'JSON::Validator' => 0,
        'File::ShareDir' => 0
    },
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 6.64,
        'File::ShareDir::Install' => 0
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
