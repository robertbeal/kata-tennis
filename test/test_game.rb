require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/game'

describe 'Tennis' do
  it 'starts a game' do
    points = { 'love-love' => '' }  
  
    Game.new(points)
        .score.must_equal 'love-love'
  end
    
  it 'scores points for each player' do
    points = {
      'love-love' => ['15-love', 'love-15'],
      '15-love'   => ['30-love', '15-all'],
      'love-15'   => ['15-all',  'love-30']
    }
  
    Game.new(points)
        .player1_scores
        .player1_scores
        .score.must_equal '30-love'  
        
    Game.new(points)
        .player2_scores
        .player2_scores
        .score.must_equal 'love-30'         
  end   
end
