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

products = []

products << Film.new(
  name: 'Леон', year: '1994', director: 'Люк Бессон', price: 990, value: 5
)

products << Film.new(
  name: 'Дурак', year: '2014', director: 'Юрий Быков', price: 390, value: 1
)

products << Book.new(
  name: 'Идиот',
  genre: 'роман',
  author: 'Федор Достоевский',
  price: 1500,
  value: 10
)

# Выводим все продукты в консоль просто передавая их методу puts
puts 'Вот какие товары у нас есть:'
puts
products.each { |product| puts product }