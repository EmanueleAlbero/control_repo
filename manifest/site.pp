node default {
  file {'README'
         name = '/root/README/':
         ensure => directory,
  }
  
  file {'README'
         name = '/root/README':
         ensure => file,
         content => 'This is a readme',
         owner   => 'root',
  }
}
