class facts::params {

  case $::operatingsystem {
    'windows': {
      $facterpath = "${::windows_common_appdata}\\PuppetLabs\\facter\\facts.d"
    }
    default: {
      $facterpath = '/etc/facter/facts.d'
    }
  }

}
