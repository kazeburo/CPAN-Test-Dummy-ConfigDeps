use strict;
use warnings;
use Module::Build;
use Module::CPANfile;

my $build = Module::Build->new(
    license              => 'perl',
    dynamic_config       => 0,

    build_requires       => {
        'Test::More' => '0.98',
        'Test::Requires' => 0,
    },
    configure_requires   => {
        'Module::Build' => '0.38',
        'Module::CPANfile' => '0.9010',
    },
    requires             => {
        perl => '5.008005',
        # 'Exporter'                      => '0',
        'parent'                        => '0',
        # 'Plack'                         => '0.9949',
    },

    no_index    => { 'directory' => [ 'inc' ] },
    name        => 'CPAN-Test-Dummy-ConfigDeps',
    module_name => 'CPAN::Test::Dummy::ConfigDeps',

);
$build->create_build_script();
