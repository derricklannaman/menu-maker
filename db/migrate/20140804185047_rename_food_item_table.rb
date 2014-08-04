class RenameFoodItemTable < ActiveRecord::Migration
  def change
    rename_table :food_items, :foods
  end
end
