# == Class: vlc
#
# Installs VLC for OS X.
#
# === Parameters:
#
# [*version*] Version of VLC to install
#
# === Examples
#
#  class { vlc:
#    version => '2.0.8',
#  }
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class vlc (
  $version = $vlc::params::version
) inherits vlc::params {
  anchor {'vlc::begin': } ->
  class {'vlc::install': } ->
  anchor {'vlc::end': }
}