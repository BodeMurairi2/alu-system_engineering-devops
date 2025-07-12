# Puppet manifest to configure SSH client for key-based authentication and disable password auth
file { '~/.ssh/config':
  ensure  => file,
  owner   => 'bodemurairi',
  group   => 'bodemurairi',
  mode    => '0600',
  content => @("CONFIG"/L),
    Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
    | CONFIG
}
