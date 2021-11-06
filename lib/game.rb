require "./lib/player"

class Game
  attr_reader :computer
  def initialize
    @computer = ["Rock", "Paper", "Scissors"].sample
  end 

    def rps(choice)
     
      if choice == "Rock" && @computer == "Paper"
        "Computer wins"
      elsif choice == "Paper" && @computer == "Rock"
        "You win"
      elsif choice == "Rock" && @computer == "Scissors"
        "You win"
      elsif choice == "Scissors" && @computer == "Rock"
      "Computer wins"
      elsif choice == "Scissors" && @computer == "Paper"
        "You win"
      elsif choice == "Paper" && @computer == "Scissors"
        "Computer wins"
      else
          "its a draw"
      end 
      end 
end 