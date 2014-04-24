# Add aptly upsteram repo to apt sources (depends on puppetlabs/apt module)
class aptly::repo {
  include apt

  if($::osfamily == 'Debian') {
    apt::source{'aptly_project_repo':
      location    => 'http://repo.aptly.info/',
      release     => 'squeeze',
      repos       => 'main',
      key_server  => 'keys.gnupg.net',
      key         => '2A194991',
      include_src => false,
    }
  }
}
