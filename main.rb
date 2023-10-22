require_relative 'player'
require_relative 'question'
require_relative 'game'

# Create players with names
player1 = Player.new("KUMA")
player2 = Player.new("NEKO")

# Create game with the players
game = Game.new(player1, player2)

puts "Welcome to the Math Game! Players, get ready to answer math questions."
game.play
