defmodule MyListTest do
  use ExUnit.Case

  test "checando list vazia" do
    assert MyList.sum([]) == 0
  end

  test "checando list de [1,2,3]" do
    assert MyList.sum([1,2,3]) == 6
  end

  test "checando list de [5,6,10,20]" do
    assert MyList.sum([5,6,10,20]) == 41
  end
end
