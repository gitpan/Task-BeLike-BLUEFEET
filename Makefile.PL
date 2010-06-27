
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Get your feet died blue (metaphorically of course).',
  'AUTHOR' => 'Aran Deltac <bluefeet@gmail.com>',
  'BUILD_REQUIRES' => {},
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Task-BeLike-BLUEFEET',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Task::BeLike::BLUEFEET',
  'PREREQ_PM' => {
    'CHI' => '0',
    'Catalyst' => '0',
    'DBIx::Class' => '0',
    'DBIx::ResultSet' => '0',
    'Module::Load' => '0',
    'Module::Pluggable' => '0',
    'Moose' => '0',
    'MooseX::Types' => '0',
    'Test::More' => '0',
    'autodie' => '0'
  },
  'VERSION' => '0.02',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



