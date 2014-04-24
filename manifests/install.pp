# Install aptly from project repo http://www.aptly.info/#download
class aptly::install {

  include aptly::repo

  package {'aptly':
    ensure  => installed,
    require => Class['aptly::repo']
  }
}
