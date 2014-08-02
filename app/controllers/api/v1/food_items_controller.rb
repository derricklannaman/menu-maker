class Api::V1::FoodItemsController < ApplicationController
  respond_to :json

  def index
    respond_with FoodItem.all
  end

  def show
    respond_with food_item
  end

  def create
    respond_with :api, :v1, FoodItem.create(food_item_params)
  end

  def update
    respond_with food_item.update(food_item_params)
  end

  def destroy
    respond_with food_item.destroy
  end

  private

    def food_item
      FoodItem.find(params[:id])
    end

    def food_item_params
      params.require(:food_item).permit(:name, :portion, :calories, :meal_type,
                                        :notes)
    end


end