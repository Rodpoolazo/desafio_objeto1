class Product
  attr_reader :name, :tallas
  def initialize(name, *tallas) # precio de las tallas
    @name = name
    @tallas = tallas.map(&:to_i)
    #@large = large
    #@medium = medium
    #@small = small
    #@xsmall = xsmall
  end

  def average
    @tallas.inject(&:+)/@tallas.size.to_f
  end
end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end
puts products_list

# promedio por producto
products_list.each do |producto|
  puts producto.name
  puts producto.average
end

# listo
