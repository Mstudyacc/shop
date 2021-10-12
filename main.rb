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

item = Film.new
item.price = 100
item.value = 290

puts "#{item.class} is for #{item.price}"
