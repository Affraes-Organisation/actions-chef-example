#
# Cookbook:: chef-actions
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file '/tmp/GoodbyeWorld.txt' do
 content 'Goodbye World!!'

 verify do |path|
  open(path).read.include? 'Goodbye World!!'
 end

 action :create
end
