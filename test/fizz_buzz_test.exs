defmodule FizzBuzzTest do
  use ExUnit.Case

  test "Soma 1 + 2" do
    assert FizzBuzz.parse(10) == "Buzz"
    assert FizzBuzz.parse(11) == 11
    assert FizzBuzz.parse(12) == "Fizz"
    assert FizzBuzz.parse(13) == 13
    assert FizzBuzz.parse(14) == 14
    assert FizzBuzz.parse(15) == "FizzBuzz"
  end

  test "test " do
    assert FizzBuzz.create(30) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14,
 "FizzBuzz", 16, 17, "Fizz", 19, "Buzz", "Fizz", 22, 23, "Fizz", "Buzz", 26,
 "Fizz", 28, 29, "FizzBuzz"]
  end
end
