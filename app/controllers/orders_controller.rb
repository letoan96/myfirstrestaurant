class OrdersController < ApplicationController

	def new 
		@item = FoodItem.find(params[:food_item_id])
		@order = @item.orders.build

	end

	def create
		@item = FoodItem.find(params[:food_item_id])
		@order = @item.orders.build order_params

		if @order.save
			flash[:success] = "Thank you for your order, Item has been added to Your Cart"
			redirect_to menu_path
		else
			render 'new'
		end

	end

	def order_params
		params.require(:order).permit(:quantiy)
	end

	def checkout
		@sum=0;
		@orders = Order.all
		@orders.each do |item|
			@sum+=item.food_item.price * item.quantiy
		end
		if @sum != 0
			@sum +=20000
		end
	end
	def success
		@delete_all = Order.delete_all
	end





end
