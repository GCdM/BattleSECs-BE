class CreateTurn < ActiveRecord::Migration[5.2]
  def change
    create_table :turns do |t|
      t.integer :p1_x
      t.integer :p1_y
      t.integer :p2_x
      t.integer :p2_y
      t.belongs_to :game, foreign_key: true
    end
  end
end
