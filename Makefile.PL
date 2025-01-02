use strict;
use warnings;

use ExtUtils::MakeMaker qw( WriteMakefile );

my %test_requires = (
    'Test::More'      => 0,  # For testing.
    'Test::Exception' => 0,  # For testing.
);

WriteMakefile(
    NAME          => 'Convert::Base32',
    VERSION_FROM  => 'lib/Convert/Base32.pm',
    ABSTRACT_FROM => 'lib/Convert/Base32.pm',

    ( "$ExtUtils::MakeMaker::VERSION" >= 6.64 ? ( TEST_REQUIRES  => \%test_requires )
    : "$ExtUtils::MakeMaker::VERSION" >= 6.56 ? ( BUILD_REQUIRES => \%test_requires )
    :                                           ( PREREQ_PM      => \%test_requires )
    ),

    dist  => { COMPRESS => 'gzip -9f' },
    clean => { FILES => 'Convert-Base32-*' },
);
