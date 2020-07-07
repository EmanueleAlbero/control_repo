class profile ::ssh_server {
    package {'openssh-server':
              ensure => present,
    }
    service { 'sshd':
             ensure => 'running',
             enable => 'true',
    }
    ssh_authorized_key { 'root@master.puppet.vm':
             ensure => present,
             user => 'root',
             type => 'ssh-rsa',
             key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDYB3kzeSvNrXFm+wlisRLTY0DWsaqZmsbwxVxY9FW2bjZOQQ0o/j0SQjrAO8VGr2J+ZP2eaTsBy6zspLiCWMm2Nsqw6BUHJMf2sud4n1qnxdBNUpkrcFP062jRvrTN99Rw22E7D2qUfCBfm4LpWjDwT8dnDdiMH02GNZeu2RvSyQuaPDgrZvfrq/lN6lnmu4OzKh1Fga7ML00ZwmsRSJ1vUDNhSXhsebtrAVP2QdRf44CR2RwHtZtH+6lNdp1eE/iYTmrFwrYUGqXqH/s8oDcX6AKCshAlfzugFbYEkG9S3yn01N5hbnitZ1pLvBJ/3+QklhHBkVfMb4tddlBy3lWb'
    }
}
