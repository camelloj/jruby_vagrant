include apt::update
include jruby
include apache2
include postgres
include tomcat7

group { "puppet":
  ensure => "present",
}


class { 'elasticsearch':
   package_url => 'https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.10.deb',
#   require=>Package["openjdk-7-jre-headless"],
   config => {
     'cluster'  => {
       'name'   => 'xoom-payment-account'
     },
     'node'     => {
        'name'  => 'XNode'
      }
   }
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

package { ["emacs23","gem","git-core"]:
  ensure  => latest,
}

package { ["bundler"]:
  ensure   => present,
  provider => 'gem',
  require => Package['gem']
}
