defmodule DungeonClawl.CLI.RoomActionsChoice do
  alias Mix.Shell.IO, as: Shell
  import DungeonClawl.CLI.BaseCommands

  def start(room) do
    room_actions = room.actions
    find_actions_by_index = &(Enum.at(room_actions, &1))

    Shell.info(room.description)

    chosen_action =
      room_actions
      |> Enum.map(&(&1.label))
      |> display_options
      |> generate_question
      |> Shell.prompt
      |> parse_answer
      |> find_actions_by_index.()

    {room, chosen_action}
  end
end
