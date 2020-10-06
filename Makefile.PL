require 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'               => 'Digest',
    'AUTHOR'             => 'Gisle Aas <gisle@activestate.com>',
    'VERSION_FROM'       => 'lib/Digest.pm',
    'ABSTRACT_FROM'      => 'lib/Digest.pm',
    'LICENSE'            => 'perl',
    'MIN_PERL_VERSION'   => '5.006',
    'CONFIGURE_REQUIRES' => {
        'ExtUtils::MakeMaker' => '0',
    },
    'PREREQ_PM' => {
        'MIME::Base64' => 0,
        'Test::More'   => '0.47'
    },
    'TEST_REQUIRES' => {
        'Test::More' => '0',
    },
    'INSTALLDIRS' => ( ( $] >= '5.009005' && $] < '5.012' ) ? 'perl' : 'site' ),
    'dist'        => { 'COMPRESS' => 'gzip -9f', 'SUFFIX' => 'gz', },
    'clean'       => { 'FILES' => 'Digest-*' },

    'META_MERGE' => {
        'resources' => {
            'license'    => 'http://dev.perl.org/licenses/',
            'bugtracker' => 'https://github.com/Dual-Life/digest/issues',
            'repository' => 'https://github.com/dual-Life/digest/',

        }
    },
);
