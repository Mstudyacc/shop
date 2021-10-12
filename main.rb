require_relative "product"
require_relative "book"
require_relative "film"

item = Film.new
item.price = 100
item.value = 290

puts "#{item.class} is for #{item.price}"
