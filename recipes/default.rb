#
# Cookbook:: chef-actions
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

File `test.txt` do
 Content ‘This is a test file”
 action :create
end
