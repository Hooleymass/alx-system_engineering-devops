# Installing a flask using pip3
class { 'python3::pip3'
  ensure   => 'latest',
  provider => 'pip3',
}
exec { 'pip3 install flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
}
