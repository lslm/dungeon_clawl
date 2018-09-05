defmodule DungeonClawl.Character do
  defstruct name: nil,
            description: nil,
            hit_points: nil,
            max_hit_points: nil,
            attack_description: nil,
            damage_range: nil

  defimpl String.Chars do
    def to_string(character), do: character.name
  end
end
