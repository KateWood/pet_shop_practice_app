class AddHeightToPet < ActiveRecord::Migration
  def change
    add_column :pets, :height, :float
  end
end
