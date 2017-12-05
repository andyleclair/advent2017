defmodule Advent01.Problem02 do

  def solve_captcha(captcha) do
    list = captcha_list(captcha)
    list
    |> Enum.with_index
    |> Enum.reduce(0, fn({element, index}, acc) ->
      if element == halfway_around_item(index, list) do
        acc + element
      else
        acc
      end
    end)
  end

  def halfway_around_item(index, list) do
     posn = Integer.mod(index + div(length(list), 2), length(list))
     Enum.at(list, posn)
  end

  def captcha_list(captcha), do: captcha |> String.split("", trim: true) |> Enum.map(&String.to_integer/1)
end
