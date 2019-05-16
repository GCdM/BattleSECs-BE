class  Game < ApplicationRecord
  belongs_to :player1, class_name: "User"
  belongs_to :player2, class_name: "User"
  has_many :turns
  has_many :ships

  def users
    [self.player1, self.player2]
  end
end