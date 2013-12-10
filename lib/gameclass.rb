class Game
  attr_reader :player, :computer

  def initialize
    @player = Player.new
    @computer = Player.new
  end

  def win_or_lose
    case player.move
    when computer.move
      draw
    when "rock"
      win if computer.move == "scissor"
      lose if computer.move == "paper"
    when "paper"
      win if computer.move == "rock"
      lose if computer.move == "scissor"
    when "scissor"
      win if computer.move == "paper"
      lose if computer.move == "rock"
    end
  end

  def win
    player.score += 1
    "You win!"
  end

  def lose
    computer.score += 1
    "You lose!"
  end

  def draw
    ""
  end
end