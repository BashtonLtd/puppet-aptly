# Class: aptly
#
# This module installs and configures aptly (Debian repository management tool)
#
# Requires:
#   puppetlabs/apt

# Sample Usage:
#  include aptly

class aptly(
) {
  include aptly::install
}
