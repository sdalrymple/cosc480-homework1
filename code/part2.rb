class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  raise NoSuchStrategyError unless m1[1].match(/^[S|P|R]$/)
  raise NOSuchStrategyErroe unless m2[1].match(/^[S|P|R]$/)
  s1 = m1[1]
  s2 = m2[1]
  if s1.eql?("R")  #player 1 throws rock
    if s2.eql?("P") #p2 needs paper to win
      return m2
    end
    return m1
  elsif s1.eql?("S") #p1 scissors
    if s2.eql?("R") #p2 needs rock
      return m2
    end
    return m1
  else #p1 paper
    if s2.eql?("S") #p2 scissors
      return m2
    end
    m1
  end
  

  # YOUR CODE HERE
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  rps_result(game[0], game[1])
end

def rps_tournament_winner(tournament)
    if tournament[0][1].class.eql?(String) 
      return rps_game_winner(tournament)
    else 
      left =  rps_tournament_winner(tournament[0])
      right = rps_tournament_winner(tournament[1])
      rps_result(left,right)
    end
end


#t1 = [[[["a","P"],["d","S"]], [["r","R"],["m", "S"]]],
      [[["al","S"],["O", "P"]], [["dd","R"], ["rx","P"]]]]

#puts rps_tournament_winner(t1) 


