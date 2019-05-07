#Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:

#propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(nombre, raza, color)
    @nombre = nombre
    @raza = raza
    @color = color
  end

  def ladrar
    puts "#{@nombre} está ladrando y es de raza #{@raza} de color #{@color}"
  end
end
  dog = Dog.new('Beethoven', 'San Bernardo', 'Cafe')

puts dog.ladrar

# listo
