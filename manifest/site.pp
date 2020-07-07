node default {
  file {'README'
         name = '/usr/README':
         ensure => file,
         content => 'This is a readme',
         owner   => 'root',
  }
}
