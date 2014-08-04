class Api::V1::FoodsController < ApplicationController
  respond_to :json

  def index
    respond_with Food.all
  end

  def show
    respond_with food
  end

  def create
    respond_with :api, :v1, Food.create(food_params)
  end

  def update
    respond_with foods.update(food_params)
  end

  def destroy
    respond_with food.destroy
  end

  private

    def foods
      Food.find(params[:id])
    end

    def food_params
      params.require(:food).permit(:name, :portion, :calories, :meal_type,
                                        :notes)
    end


end