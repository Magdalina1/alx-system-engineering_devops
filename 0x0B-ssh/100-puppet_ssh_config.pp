#!/usr/bin/env bash
#Using puppet to connect without password

file_line { '/etc/ssh/ssh_config':
 ensure => present,
}
file_line { 'Turn off passwd auth':
  match  => '^#PasswordAuthentication',
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
}

file_line { 'Declare identity file':
  match  => '^#dentityFile',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}
