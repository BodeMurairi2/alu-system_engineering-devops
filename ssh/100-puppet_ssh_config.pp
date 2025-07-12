# Puppet manifest to configure system-wide SSH client for key-based auth and disable password authentication

file { '/etc/ssh/ssh_config':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => @("CONFIG"/L),
    Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
    | CONFIG
}
