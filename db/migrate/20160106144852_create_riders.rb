class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :name
      t.integer :age
      t.string :photo

      t.timestamps null: false
    end
  end
end
