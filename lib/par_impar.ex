require Integer

defmodule ParImpar do
  def separate(list) do
    {
      :impares,
      Enum.filter(list, &Integer.is_odd/1),
      :pares,
      Enum.filter(list, &Integer.is_even/1)
    }
  end

  def create_list(n) do
    Enum.to_list(1..n)
  end

  def get_odd(n) do
    Enum.filter_map(1..n, &Integer.is_odd/1, &(&1))
  end

  def get_even(n) do
    Enum.filter_map(1..n, &Integer.is_even/1, &(&1))
  end

  def check_odd_even(n) when Integer.is_odd(n), do: "Impar"
  def check_odd_even(n) when Integer.is_even(n), do: "Par"
end
