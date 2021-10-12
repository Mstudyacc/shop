if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end


require_relative "lib/product"
require_relative "lib/book"
require_relative "lib/film"

leon = Film.new(price: 990, amount: 5)
puts "Film leon is for #{leon.price}$"

book = Book.new(price: 50, value: 1)
puts "And we have #{book.class} for #{book.price}"