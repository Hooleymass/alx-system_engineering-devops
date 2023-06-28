# create file school @ /tmp with :
  #permission is 0744
  #owner is www-data
  #group is www-data
  #contains I love Puppet

file { '/tmp/school':
  ensure  => 'file',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
