class Product
	attr_reader :price, :value

	def initialize(params)
		@price = params[:price]
		@value = params[:value]
	end
end

