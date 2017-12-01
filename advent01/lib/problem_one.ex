defmodule Advent01.Problem01 do


  @spec solve_captcha(binary) :: integer
  def solve_captcha(captcha) do
    list = captcha_list(captcha)
    most = solve_it(list, 0)
    if List.first(list) == List.last(list) do
      most + List.first(list)
    else
      most
    end
  end

  def solve_it([ first | rest ], sum) do
    if first == List.first(rest) do
      solve_it(rest, sum + first)
    else
      solve_it(rest, sum)
    end
  end

  def solve_it([], sum), do: sum

  def captcha_list(captcha), do: captcha |> String.split("", trim: true) |> Enum.map(&String.to_integer/1)

end
