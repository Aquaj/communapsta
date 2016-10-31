class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :track, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
