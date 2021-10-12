
class Book < Product

attr_reader :name, :genre, :author


	def initialize(params)
		super

		@genre = params[:genre]
		@author = params[:author]
		@name = params[:name]
	end

	def to_s
   		"Книга «#{@name}», #{@genre}, автор — #{@author}, #{super}"
  	end
end
