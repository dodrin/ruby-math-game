class Player
  attr_reader :lives
  attr_accessor :name

  # Initialize players
  def initialize(name)
     @name = name
     @lives = 3
  end

  # Keeps count of the player's remaining lives
  def decrease_lives
    @lives -= 1
  end
end

# Test
# player_1 = Player.new("Kuma")
# puts player_1.name