# == Defined Type facts
#
define facts::instance (
  $ensure = present,
  $factname = $name,
  $value = undef,
) {

  file { "${facts::facterpath}/${factname}.txt":
    ensure  => $ensure,
    content => "${factname}=${value}",
    group   => 'root',
    mode    => '0664',
    owner   => 'root',
  }
}
