module Parted
  class PedDevice
    extend FFI::Library
    ffi_lib LIB

    attach_function :_ped_device_probe, [:string], :void
    attach_function :canonicalize_file_name, [:string], :string
    attach_function :ped_device_begin_external_access, [:pointer], :int
    attach_function :ped_device_cache_remove, [:pointer], :void
    attach_function :ped_device_check, [:pointer, :pointer, :long_long, :long_long], :long_long
    attach_function :ped_device_close, [:pointer], :int 
    attach_function :ped_device_destroy, [:pointer], :void
    attach_function :ped_device_end_external_access, [:pointer], :int
    attach_function :ped_device_free_all, [], :void
    attach_function :ped_device_get, [:string], :pointer
    attach_function :ped_device_get_constraint, [:pointer], :pointer
    attach_function :ped_device_get_next, [:pointer], :pointer
    attach_function :ped_device_is_busy, [:pointer], :int
    attach_function :ped_device_open, [:pointer], :int
    attach_function :ped_device_probe_all, [], :void
    attach_function :ped_device_read, [:pointer, :pointer, :long_long, :long_long], :int
    attach_function :ped_device_sync, [:pointer], :int
    attach_function :ped_device_sync_fast, [:pointer], :int
    attach_function :ped_device_write, [:pointer, :pointer, :long_long, :long_long], :int
    
  end
end
