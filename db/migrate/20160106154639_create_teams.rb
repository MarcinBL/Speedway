class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      
      t.string :teamname
      t.integer :year
      t.string :coach

      t.timestamps null: false
    end
  end
end
