# SSH client configuration
#
file_line { 'Configure identity file':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
}

file_line { 'Disable password authentication':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
}

