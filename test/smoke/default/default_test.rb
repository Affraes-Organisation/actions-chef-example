# # encoding: utf-8

# Inspec test for recipe chef-actions::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe file('/tmp/test.txt') do
#  its('content') { should match(%r{/^This is a test file$/}) }
  it { should exist }
end
