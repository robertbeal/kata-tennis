
class Game
  def initialize(points, score=points.keys.first)
    @score = score
    @points = points
  end
  
  def score
    @score
  end
  
  def player1_scores
    Game.new(@points, @points[score][0])
  end
  
  def player2_scores
    Game.new(@points, @points[score][1])
  end
end
