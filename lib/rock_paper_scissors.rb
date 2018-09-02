class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" if player1[1].match(/[RSP]/) == nil || player2[1].match(/[RSP]/) == nil
    case
    when player1[1] == 'R' && player2[1] == 'S'
      player1
    when player1[1] == 'S' && player2[1] == 'P'
      player1
    when player1[1] == 'P' && player2[1] == 'R'
      player1
    when player1[1] == player2[1]
      player1
    else
      player2
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a? String
      return winner(tournament[0],tournament[1])
    end
     winner(tournament_winner(tournament[0]),tournament_winner(tournament[1]))
  end

end
