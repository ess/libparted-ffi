require 'ffi'

module Parted
  extend FFI::Library

  LIB = [
    'libparted.so.0.0.1',
    'libparted.so.0',
    'libparted.so',
    'libparted'
  ]

  VERSION = '0.0.0'
end

require 'parted/ped_chs_geometry'
