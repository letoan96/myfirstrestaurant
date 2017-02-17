class FoodItem < ApplicationRecord
	belongs_to :section
	validates :name, :price, presence: true
	has_many :orders
	 
	def image_url_or_default
		image_url || "http://nguoilamseo.com/wp-content/plugins/websieure-chiase/images/default.jpg"
		if !image_url.nil? && !image_url.blank?
			image_url
		else
			"http://nguoilamseo.com/wp-content/plugins/websieure-chiase/images/default.jpg"
		end

	end  
end
