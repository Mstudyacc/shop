
class Product
	attr_reader :price, :value,

	def initialize(params)
		@price = params[:price]
		@value = params[:value]
	end

	def to_s
		"Price is #{@price} and value is #{@value}"
	end
end
