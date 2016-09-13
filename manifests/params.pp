class facts::params {

  case $::operatingsystem {
    'windows': {
      $facterpath = '%programdata%\PuppetLabs\facter\facts.d'
    }
    default: {
      $facterpath = '/etc/facter/facts.d'
    }
  }

}
