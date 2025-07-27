defmodule FizzBuzz do

  def main() do
    fizzbuzz_100()
      |> Enum.join(" ")
      |> IO.puts()
  end

  def fizzbuzz_100 do
    Enum.map(1..100, &fizzbuzz/1)
  end

  @spec fizzbuzz(integer()) :: String.t()
  def fizzbuzz(number) do
    divisible_by_3 = rem(number, 3) == 0
    divisible_by_5 = rem(number, 5) == 0

    cond do
      divisible_by_3 and divisible_by_5 -> "fizzbuzz"
      divisible_by_3 -> "fizz"
      divisible_by_5 -> "buzz"
      true -> to_string(number)
    end
  end

end

ExUnit.start()

defmodule FizzBuzzTest do
  use ExUnit.Case
  import FizzBuzz

  test "fizzbuzz 1-10" do
    assert fizzbuzz(1) == "1"
    assert fizzbuzz(2) == "2"
    assert fizzbuzz(3) == "fizz"
    assert fizzbuzz(4) == "4"
    assert fizzbuzz(5) == "buzz"
    assert fizzbuzz(6) == "fizz"
    assert fizzbuzz(7) == "7"
    assert fizzbuzz(8) == "8"
    assert fizzbuzz(9) == "fizz"
    assert fizzbuzz(10) == "buzz"
  end

  test "fizzbuss outputs fizzbuzz" do
    assert fizzbuzz(15) == "fizzbuzz"
  end

end
