# Installing a flask using pip3
class { 'python3::pip3'
  ensure   => 'latest',
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Class['python3::pip3'],
}
