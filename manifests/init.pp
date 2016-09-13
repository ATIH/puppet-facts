# Facts
class facts (
  $instances = {},
  $facterpath = $facts::params::facterpath
) inherits facts::params {

  if versioncmp($::facterversion, '1.7') == -1 {
    fail('facts::instance requires a Facter version >= 1.7')
  }

  file { $facterpath :
    ensure  => directory
  }

  create_resources(facts::instance, $instances)
}
