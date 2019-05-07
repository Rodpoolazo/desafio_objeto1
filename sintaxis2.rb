class Car
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
  end


  def favorito
  "Mi auto favorito es un #{@model} del año #{@year}!"
  end
end

car = Car.new('Camaro', '2016')
puts car.favorito

car = Car.new('Sti', '2019')
puts car.favorito

car = Car.new('Montero', 2018)
puts car.favorito


# listo
