class GameEngine
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
      computer.move == "scissor" ? win : lose
    when "paper"
      computer.move == "rock" ? win : lose
    when "scissor"
      computer.move == "paper" ? win : lose
    end
  end

  def win
    player.score += 1
    "Congratulations, you won!"
  end

  def lose
    computer.score += 1
    "Sorry, you lost. Better luck next time."
  end

  def draw
    "It's a tie!"
  end
end