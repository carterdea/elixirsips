defmodule Ping do
  def start do
    receive do
      {:pong, pid} -> Process.send(pid, {:ping, self}, [])
    end
  end
end