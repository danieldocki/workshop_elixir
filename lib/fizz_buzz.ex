defmodule FizzBuzz do
  def parse(n) do
    fizzbuzz(rem(n, 3), rem(n, 5), n)
  end

  def create(n) do
    Enum.map(1..n, &parse/1)
  end

  defp fizzbuzz(0, 0, _), do: "FizzBuzz"
  defp fizzbuzz(0, _, _), do: "Fizz"
  defp fizzbuzz(_, 0, _), do: "Buzz"
  defp fizzbuzz(_, _, n), do: n
end
