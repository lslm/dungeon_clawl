defmodule DungeonClawl.CLI.Main do
  alias Mix.Shell.IO, as: Shell

  def start_game do
    welcome_message()
    Shell.prompt("Press Enter to continue")
    hero_choice()
    crawl(DungeonClawl.Room.all())
  end

  defp crawl(rooms) do
    Shell.info("You keep moving forward to the next room.")
    Shell.prompt("Press Enter to continue...")
    Shell.cmd("clear")

    rooms
    |> Enum.random
    |> DungeonClawl.CLI.RoomActionsChoice.start
  end

  defp welcome_message do
    Shell.info("=== Dungeon Clawl ===")
    Shell.info("You awake in a dungeon full of monsters")
    Shell.info("You need to survive and find the exit")
  end

  defp hero_choice do
    DungeonClawl.CLI.HeroChoice.start
  end
end
