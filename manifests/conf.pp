# Creates configuration file in /etc/aptly.conf
#
# Parameters:
#   rootdir - where all aptly created repo data is going to be storred
#   server_port - port on which aptly server will listen
#   architectures - what architectures aptly should support, default is amd64
#     but there can be more, all which are supported by distro kernel
#
class aptly::conf(
  $rootdir,
  $server_port = '82',
  $architectures = ['amd64'],
) {

  file{
    '/etc/aptly.conf':
      ensure => 'present',
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      content=> template('aptly/aptly.conf.erb');
    '/etc/init/aptly-server.conf':
      ensure => 'present',
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      content=> template('aptly/upstart-aptly-server.conf.erb');
  }
}
