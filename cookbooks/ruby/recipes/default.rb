# Install Ruby 1.9.3
execute 'apt-get update'
package 'ruby1.9.3'

# Install gems
%w(bundler).each do |gem|
  gem_package gem
end