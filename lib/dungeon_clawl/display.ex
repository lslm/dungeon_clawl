defprotocol DungeonClawl.Display do
  def info(value)
end

defimpl DungeonClawl.Display, for: DungeonClawl.Room.Action do
  def info(action), do: action.label
end

defimpl DungeonClawl.Display, for: DungeonClawl.Character do
  def info(character), do: character.name
end
