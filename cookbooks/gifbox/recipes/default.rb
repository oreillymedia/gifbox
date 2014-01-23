ENV['LANGUAGE'] = ENV['LANG'] = ENV['LC_ALL'] = "en_US.UTF-8"


include_recipe "imagemagick"
include_recipe "ffmpeg"