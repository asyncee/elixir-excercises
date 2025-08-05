defmodule QuadraticEquation do
  @moduledoc """
  https://en.wikipedia.org/wiki/Quadratic_equation
  """

  @doc """
  function accepts 3 integer arguments and returns:
  {:roots, root_1, root_2} or {:root, root_1} or :no_root

  ## Examples
  iex> QuadraticEquation.solve(1, -2, -3)
  {:roots, 3.0, -1.0}
  iex> QuadraticEquation.solve(3, 5, 10)
  :no_roots
  """
  def solve(a, b, c) do
    d = b ** 2 - 4 * a * c
    solve(a, b, c, d)
  end

  def solve(a, b, c, d) when d < 0 do
    :no_roots
  end

  def solve(a, b, c, d) when d > 0 do
    x1 = (-b + :math.sqrt(d)) / (2 * a)
    x2 = (-b - :math.sqrt(d)) / (2 * a)
    {:roots, x1, x2}
  end

  def solve(a, b, _, 0) do
    {:root, -b / (2 * a)}
  end

end
