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
    mode    => '0664',
  }
}
