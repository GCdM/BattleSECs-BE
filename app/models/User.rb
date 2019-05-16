class  User < ApplicationRecord
  has_secure_password
  # has_many :games, foreign_key: [:player2_id, :player1_id]
  has_many :ships 

  def games
    Game.where(player1: self).or(Game.where(player2: self))
  end
end