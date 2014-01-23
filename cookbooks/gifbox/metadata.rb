name             'gifbox'
maintainer       'Andrew Odewahn'
maintainer_email 'odewahn@oreilly.com'
license          'MIT'
description      'Installs stuff required to make gifs from movies'
long_description 'Installs stuff required to make gifs from movies'
version          '0.1.0'
%w[ debian ubuntu centos redhat fedora scientific suse amazon].each do |os|
  supports os
end

recipe "gifbox", "Install imagemagick and ffmpeg"

depends "ffmpeg"
depends "imagemagick"