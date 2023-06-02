class HomeController < ApplicationController
  def index
    @top_restaurants = Restaurant.order(items_count: :desc).limit(3)
  end

  def categories
    @categories = Dish.distinct.pluck(:name).sort_by do |category|
      case category
      when 'Entradas'
        1
      when 'Platos Principales'
        2
      when 'Postres'
        3
      else
        4
      end
    end
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
