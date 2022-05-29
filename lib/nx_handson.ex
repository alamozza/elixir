defmodule NxHandson do
  @moduledoc """
  Documentation for `NxHandson`.
  """

  @doc """
  tokyo.ex #19 Nx handson source code

  """

  def norm(n) do
    # a = (for _ <- 1..n, do: Math.sqrt(Math.pow(Random.random(), 2) + Math.pow(Random.random(), 2)))
    a = (for _ <- 1..n, do: Math.pow(Random.random(), 2) + Math.pow(Random.random(), 2))
      |> Enum.count(fn x -> x < 1 end)
    a * 4 / n
  end

  def usenx(n) do
    # n = 10
    x = Nx.random_uniform({n}, 0, 1, type: :f16)
    y = Nx.random_uniform({n}, 0, 1, type: :f16)
    r = Nx.add(Nx.multiply(x, x), Nx.multiply(y, y)) # |> Nx.sqrt()
    ans = r
      |> Nx.less(1)
      |> Nx.sum()
      |> Nx.to_number()
    ans * 4 / n
  end

end
