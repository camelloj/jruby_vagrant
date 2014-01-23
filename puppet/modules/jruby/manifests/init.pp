class jruby {
  
  exec { "download_jruby":
    command => "curl -sSL https://get.rvm.io | bash -s stable --ruby=jruby",
    path => $path,
   # unless => "ls /opt | grep jruby-1.7.10",    
    require => Package["curl"]
  }
  
}
