module Parted
  class PedCHSGeometry < FFI::Struct
    layout :cylinders, :int,
      :heads, :int,
      :sectors, :int
  end
end
