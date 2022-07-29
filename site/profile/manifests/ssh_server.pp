class profile::ssh_server {
  package {'oppenssh-server':
          ensure => present,
  }
  service {'sshd':
          ensure => 'running',
          enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
          ensure => present,
          user => 'root'
          type => 'ecdsa-sha2-nistp521'
          key  => 'AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAHxAL35f2EuAMMSkcXxRIQ7DnuJV4BFlefoqWSPnr3QeRbi3Uirye05qQL4ma4+VFslOh40PAWXTF3hgjzpjIPgtwFH6Fgm7kW5BeDjONmmiZj9D0nU98cN8Y8Y3kOeqIydz0Mcg
d1DDBZUGPvg04cS6odti3548kVd3MuLk/NEuXXj+w==',
  }
}
