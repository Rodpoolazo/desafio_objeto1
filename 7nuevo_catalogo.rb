byclass Product
  attr_reader :name, :large, :medium, :small, :xsmall
  def initialize(name, *tallas) # precio de las tallas
    @name = name
    @tallas = tallas.map(&:to_i)
    #@large = large
    #@medium = medium
    #@small = small
    #@xsmall = xsmall
  end

  def filter_tallas
    return @tallas[0..@tallas.size-2]
  end


end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  product = Product.new(*ls)
  products_list << "#{product.name}, #{product.filter_tallas.join(', ')}"

end

print products_list

#File.write

salida = File.write('nuevo_catalogo.txt', products_list.join("\n"))

# listo
