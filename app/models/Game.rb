class  Game < ApplicationRecord
  belongs_to :player1, class_name: "User"
  belongs_to :player2, class_name: "User"
  has_many :turns
  has_many :ships

  def users
    [self.player1, self.player2]
  end

  def p1_board

  end

  def p2_board

  end

  def player_board(player_string)
    # init_row = Array.new(5, { ship: false, hit: false }.to_h)
    # board = Array.new(5, init_row)
    board = []

    5.times do
      row = []
      5.times do
        row.push({ ship: false, hit: false })
      end
      board << row
    end

    # self.ships.each do |ship|
    #   board[ship.y][ship.x][ship] = true
    # end

    self.turns.each do |turn|
      board[turn[player_string + "_y"]][turn[player_string + "_x"]][:hit] = true
    end

    board
  end

  def opponent_board(player_string)
    self.player_board(player_string).map do |row|
      row.map do |tile|
        { hit: tile[:hit], sucess: tile[:hit] && tile[:ship] }
      end
    end
  end
end