class CreateGame < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :player1_id, foreign_key: true
      t.integer :player2_id, foreign_key: true
    end
  end
end
