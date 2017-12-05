defmodule Problem02Test do
  use ExUnit.Case

  test "spec input 1" do
    assert Advent01.Problem02.solve_captcha("1212") == 6
  end

  test "spec input 2" do
    assert Advent01.Problem02.solve_captcha("1221") == 0
  end

  test "spec input 3" do
    assert Advent01.Problem02.solve_captcha("123425") == 4
  end

  test "spec input 4" do
    assert Advent01.Problem02.solve_captcha("123123") == 12
  end

  test "spec input 5" do
    assert Advent01.Problem02.solve_captcha("12131415") == 4
  end
end
