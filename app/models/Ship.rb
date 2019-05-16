class  Ship < ApplicationRecord
  belongs_to :player1, class_name: :user
  belongs_to :player2, class_name: :user
  belongs_to :game
end