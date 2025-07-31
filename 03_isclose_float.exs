defmodule IsCloseFloat do

  def close?(f1, f2, precision \\ 0.01) do
    abs(f1 - f2) < precision
  end
  
end


ExUnit.start()

defmodule IsCloseFloatTest do
  use ExUnit.Case
  import IsCloseFloat

  test "is equal" do
    assert close?(3.0, 1.0 + 2.0)
    refute close?(3.0, 3.3)
  end

end
