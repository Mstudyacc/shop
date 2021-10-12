
class Film < Product
  # Объявим методы-геттеры для переменных экземпляра класса Фильм:
  #
  # @name — название книги
  # @year — год выхода фильма
  # @director — фамилия и имя режиссера
  attr_reader :name, :year, :director

  # В конструкторе класса Film вызовем конструктор класса-родителя Product,
  # он заполнит переменные экземпляра @price и @amount, а остальные поля,
  # специфичные только для фильма, заполним мы самостоятельно.
def initialize(params)
    super

    @name = params[:name]
    @year = params[:year]
    @director = params[:director]
  end


  # Метод to_s возвращает строку с описанием фильма и дергает родительский метод
  # to_s, чтобы склеить эту строку с ценой и остатком.
  def to_s
    "Фильм «#{@name}», #{@year}, реж. #{@director}, #{super}"
  end
end
