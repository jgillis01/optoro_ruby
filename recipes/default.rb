#
# Cookbook Name:: optoro_ruby
# Recipe:: default
#
# Copyright (C) 2014 Optoro Inc
#
# All rights reserved - Do Not Redistribute

# Update package index
include_recipe 'apt'

# Build from source or create debian package
if node['optoro_ruby']['install_method'].split('_').first == 'build'
  include_recipe 'optoro_ruby::build'
elsif node['optoro_ruby']['install_method'] == 'install_package'
  include_recipe 'optoro_ruby::install_package'
elsif node['optoro_ruby']['install_method'] == 'rvm'
  include_recipe 'optoro_ruby::rvm'
end
