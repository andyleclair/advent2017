defmodule Problem01Test do
  use ExUnit.Case

  test "spec input 1" do
    assert Advent01.Problem01.solve_captcha("1122") == 3
  end

  test "spec input 2" do
    assert Advent01.Problem01.solve_captcha("1111") == 4
  end

  test "spec input 3" do
    assert Advent01.Problem01.solve_captcha("1234") == 0
  end

  test "spec input 4" do
    assert Advent01.Problem01.solve_captcha("91212129") == 9
  end
end
