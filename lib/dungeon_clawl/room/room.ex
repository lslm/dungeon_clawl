defmodule DungeonClawl.Room do
  alias DungeonClawl.Room

  import DungeonClawl.Room.Action

  defstruct description: nil, actions: []

  def all do
    [
      %Room{
        description: "You found a quiet place. Looks safe for a little nap.",
        actions: [forward(), rest()]
      }
    ]
  end
end
