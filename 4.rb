class Dog
    def initialize(propiedades)
        @nombre = propiedades[:nombre]
    end
    def ladrar
        puts "#{@nombre} esta ladrando"
    end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)
puts perro.ladrar