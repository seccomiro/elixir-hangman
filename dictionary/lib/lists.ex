defmodule Lists do
  def sum([]), do: 0
  def sum([h|t]), do: h + sum(t)

  def double([]), do: []
  # def double([h|t]), do: [h * 2 | double(t)]
  # def double(list = [h|t]), do: map(list, fn n -> n * 2 end)
  # def double(list = [h|t]), do: map(list, &(&1 * 2))
  def double(list), do: map(list, &(&1 * 2))

  def square([]), do: []
  def square(list), do: map(list, &(&1 * &1))

  def map([], _func), do: []
  def map([h|t], func), do: [func.(h) | map(t, func)]

  def sum_pairs([]), do: []
  def sum_pairs([h1, h2 | t]), do: [h1 + h2 | sum_pairs(t)]
  def sum_pairs([h|_t]), do: [h]

  def even_length?([]), do: true
  def even_length?([_head | tail]), do: !even_length?(tail)
end