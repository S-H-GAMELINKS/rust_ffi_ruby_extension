require "ffi"

module Hello
    extend FFI::Library

    ffi_lib "./target/debug/librust_ffi.so"
    attach_function :hello_world, [], :void
end

Hello.hello_world()
# => "Hello World!"と出力される
