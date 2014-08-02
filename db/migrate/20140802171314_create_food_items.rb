class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string  :name
      t.integer :portion
      t.integer :calories
      t.string  :meal_type
      t.text    :notes

      t.timestamps
    end
  end
end
