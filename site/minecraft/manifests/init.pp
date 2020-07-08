class minecraft (
  $url = 'https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar',
  $intall_dir = '/opt/minecraft/'
){
  file {'/opt/minecraft':
     ensure => directory,
  }
  file {"${install_dir}/server.jar":
     ensure => file,
     source => $url,
     before => Service['minecraft'],
  }
  package {'java':
      ensure => present,
  }
  file {'/opt/minecraft/eula.txt':
    ensure => file,
    content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
      ensure => file,
      source => 'puppet:///modules/minecraft/minecraft.service',
   }
   service {'minecraft':
     ensure => running,
     enable => true,
     require => [Package['java'],File["${install_dir}/eula.txt"],File['/etc/systemd/system/minecraft.service']],
   }
}
