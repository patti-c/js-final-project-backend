class Changetrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :origin_code, :string
    add_column :trips, :destination_code, :string
  end
end
