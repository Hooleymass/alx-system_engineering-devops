# Installing a flask using pip3
class { 'python3::pip3'
  ensure   => 'latest',
}

package { 'python3':
  ensure => '3.8.10',
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Class['python3::pip3'],
}

package { 'Flask':
  ensure   => '2.1.1',
  provider => 'pip3', 
  require  => Class['python3::pip3'],
}
