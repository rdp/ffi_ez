require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "easier ffi" do

  it "should allow the old way still" do
    
    module Hello
      extend FFI::Library
      ffi_lib 'msvcrt'
      attach_function 'puts', [ :string ], :int
    end

    Hello.puts("Hello, World")
    
    module Hello
      extend FFIEZ
      ffi_lib 'msvcrt'
      attach_function 'puts', [ :string ], :int
    end
    Hello.puts("Hello, World")

  end

  it "should allow the new way" do
    module Hello2
      extend FFIEZ # a new attach_function
      ffi_lib 'msvcrt'
      attach_ez 'puts', [:string] => :int      
    end
    Hello2.puts "yoyo"
  end
  
  it "should work with just the new EZ" do
      module Test3
         extend FFIEZ
         ffi_lib 'msvcrt'
         attach_ez 'puts', [:string] => :int
      end
    end

  it "should work with a different name" do
    pending
    module Text3
      extend FFIEZ
      ffi_lib 'msvcrt'
      attach_ez 'puts' => :puts, [:string] => :int
    end
  end

  it "should auto parse for you (?)"
  
  it "should allow for :lib => something"

end
