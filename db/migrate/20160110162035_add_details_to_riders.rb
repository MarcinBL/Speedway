class AddDetailsToRiders < ActiveRecord::Migration
  def change
    add_column :riders, :druzyna, :string
  end
end
