class Player
  attr_reader :moves
  attr_accessor :score, :move

  def initialize
    @moves = ["rock", "paper", "scissor"]
    @score = 0
  end

  def random_move
    self.move = moves[rand(0..2)]
  end
end