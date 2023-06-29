# Excuting a command with puppet

exec {  'Kill':
  command => '/usr/bin/pkill -KILL killmenow'
}

