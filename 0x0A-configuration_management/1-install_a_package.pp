# Installing a flask using pip3

package { 'Flask':
  ensure   => '2.1.1',
  provider => 'pip3',
}
