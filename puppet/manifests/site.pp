include apt::update
include jruby
include apache2
include postgres
include tomcat7

group { "puppet":
  ensure => "present",
}

exec { "apt-update" :
  command => "/usr/bin/apt-get update",
  require => Group[puppet]
}

Exec["apt-update"] -> Package <| |>

package { "openjdk-7-jdk" :
  ensure => present
  }
package { "curl" :
  ensure => present
}
