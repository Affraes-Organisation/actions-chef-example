#
# Cookbook:: chef-actions
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file '/tmp/test.txt' do
 content 'This is a test file'

 verify do |path|
  open(path).read.include? 'This is a test file'
 end
 
 action :create
end
