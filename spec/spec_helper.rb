$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'ffi_easier'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
  
end
