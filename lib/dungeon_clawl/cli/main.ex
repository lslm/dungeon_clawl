defmodule DungeonClawl.CLI.Main do
  alias Mix.Shell.IO, as: Shell

  def start_game do
    welcome_message()
    Shell.prompt("Press Enter to continue")
    hero_choice()
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
