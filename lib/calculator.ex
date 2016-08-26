defmodule Calculator do
  def result({:soma, a, b}) do
    convert_to_integer([a, b])
    |> Enum.sum
  end

  def result({:subtrai, a, b}) do
    convert_to_integer([a, b])
    |> Enum.reduce(fn(x, acc) -> acc - x end)
  end

  def result({:multiplica, a, b}) do
    convert_to_integer([a, b])
    |> Enum.reduce(fn(x, acc) -> acc * x end)
  end

  def result({:divide, a, b}) do
    convert_to_integer([a, b])
    |> Enum.reduce(fn(x, acc) -> acc / x end)
  end

  def result({_, a, b}) do
    "Operação inválida"
  end

  defp convert_to_integer(list) do
    Enum.map(list, fn(n) ->
      if is_integer(n), do: n, else: String.to_integer(n)
    end)
  end
end
