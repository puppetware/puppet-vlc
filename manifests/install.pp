# == Class: vlc::install
#
# Installs VLC for OS X.
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class vlc::install {
  $version = $vlc::version

  case $::kernel {
    'Darwin': {
       $source = "http://get.videolan.org/vlc/${version}/macosx/vlc-${version}-intel64.dmg"
    }
    default: {
      fail("Unsupported Kernel: ${::kernel} operatingsystem: ${::operatingsystem}")
    }
  }
  package {"vlc-${version}":
    ensure => installed,
    source => $source,
    provider => appdmg,
  }
}