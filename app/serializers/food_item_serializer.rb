class FoodItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :portion, :calories, :meal_type, :notes
end