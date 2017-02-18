class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
  	@sections = Section.all
    @food_items = FoodItem.all
    if params[:section_id].present?
      @current_section = Section.find(params[:section_id])
      @Section_food_item = @current_section.food_items
    end

    if params[:food_id].present?
      @item = FoodItem.find(params[:food_id])
    end

    if params[:sort_by].present?
      if params[:sort_by] == "name"
        @food_items = FoodItem.all.order('name asc')
      end
      if params[:sort_by] == "Hprice"
        @food_items = FoodItem.all.order('price desc') 
      end
      if params[:sort_by] == "Lprice"
        @food_items = FoodItem.all.order('price asc')
      end
    end

    if params[:section_id].present? && params[:sort_by].present?
        if params[:sort_by] == "name"
        @Section_food_item = @current_section.food_items.order('name asc')
        end
        if params[:sort_by] == "Hprice"
        @Section_food_item = @current_section.food_items.order('price desc')
        end
        if params[:sort_by] == "Lprice"
        @Section_food_item = @current_section.food_items.order('price asc')
        end
    end

     
    
  end


end

