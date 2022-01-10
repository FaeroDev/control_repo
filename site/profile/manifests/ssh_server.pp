class profile::ssh_server {
  package {'openssh-server':
          ensure => present,
  }
  service { 'sshd':
          ensure => 'running',
          enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppeyt.vm':
          ensure => present,
          user   => 'root',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTNaGRfWJJf7JKKr1TutCjXYirnL7VnRsBx9lQeeXcliHz8KafzrsGscmDEiyEp4mmrGSXpRU+cYfUHB6t5P1cNUhyWzc5VYYR2qjQ94kM7gOv37cI5e0CvNDQBc6GY/faoUcHvtpFf2MwdNxsCYxgCTlwQbN6U3c2DPn6fZydo/L5Z+8pX4irlMfmYqSFcBLkPj84od2VBaZ3bxXzU9l7ZTSiZClol/0YAP6QycdUIbX9bdPBo1UbTZmWstewF7GYaU6mQJjcw0ir71d/vvwX2bylskoXfvHKhGjzXVLlIbmHO1CTb0wcRxyzjqwax2cZ4v2oPyiqarabtX/Eb4lF',
   }
}
