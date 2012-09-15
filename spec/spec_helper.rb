$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib')) do |file|
	require file
end

require 'rspec'
require 'rspec/autorun'

RSpec.configure do |config|
	config.color_enabled = true
  config.formatter = 'documentation'
end