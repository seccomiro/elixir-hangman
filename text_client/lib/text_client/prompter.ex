defmodule TextClient.Prompter do
  def accept_move(game) do
    IO.gets("Your guess: ")
    |> check_input()
  end

  defp check_input({:error, reason}) do
    IO.puts("Game ended: #{reason}")
    exit(:normal)
  end
end
