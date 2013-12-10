class Player
  attr_reader :moves
  attr_accessor :score, :move

  def initialize
    @moves = ["rock", "paper", "scissor"]
    @score = 0
  end

  def random_move
    move = @moves[rand(1..3)]
  end
end