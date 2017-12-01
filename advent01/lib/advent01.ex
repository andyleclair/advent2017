require Advent01.Problem01

defmodule Advent01 do
  @moduledoc """
  Documentation for Advent01.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Advent01.hello
      :world

  """
  def problem_one() do
    Advent01.Problem01.solve_captcha(captcha())
  end

  defp captcha, do: Application.get_env(:advent01, :captcha)
end
