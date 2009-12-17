require 'ffi'

module FFIEZ
  
  def attach_ez method_name, parametersAndReturn
    raise unless parametersAndReturn.is_a? Hash # yeah
    raise unless parametersAndReturn.size == 1
    attach_function method_name, parametersAndReturn.keys[0], parametersAndReturn.values[0]
  end
  
  def self.extended(base)
    # also want them to have the defaults, if desired
    base.extend FFI::Library
  end
end