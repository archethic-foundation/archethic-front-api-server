defmodule ArchethicFAS.AESwap.Supervisor do
  @moduledoc false

  alias ArchethicFAS.AESwap.Cache
  alias ArchethicFAS.AESwap.Scheduler

  use Supervisor

  def start_link(args \\ []) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(_args) do
    children = [
      Cache,
      Scheduler
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
