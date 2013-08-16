# Install some gems dependencies
execute 'apt-get update'
%w(build-essential libxslt-dev libxml2-dev).each do |p|
  package p
end

# Install bundler
%w(bundler).each do |gem|
  gem_package gem
end