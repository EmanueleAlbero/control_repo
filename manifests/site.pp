node default {
  file { '/root/README2':
         ensure => file,
         content => 'This is a readme',
         owner   => 'root',
  }
  
  file { '/root/README2':
         ensure => file,
         content => 'This is another readme',
         owner   => 'root',
  }
  
}
