#
# Cookbook:: chef-actions
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file '/tmp/test.txt' do
 content 'This is a test file'
 action :create
end
