defmodule Procs do
  # # EXAMPLE 1
  # def greeter(what_to_say) do
  #   # Process.sleep(5000)
  #   receive do
  #     name ->
  #       IO.puts("#{what_to_say} #{name}!")
  #   end

  #   greeter(what_to_say)
  # end

  # def greeter do
  #   greeter("Hello")
  # end

  # EXAMPLE 2
  def greeter(count) do
    receive do
      {:boom, reason} ->
        IO.puts("Terminating GREETER")
        exit(reason)

      {:add, value} ->
        IO.puts("Count uptaded to: #{count + value}")
        greeter(count + value)

      :reset ->
        IO.puts("Count reseted")
        greeter(0)

      name ->
        IO.puts("#{count}: #{name}")
        greeter(count)

        # default ->
        #   IO.puts("Invalid option")
        #   greeter(count)
    end
  end
end
