class Product
    attr_reader :name, :sizes
    def initialize(name, *sizes)
        @name = name
        @sizes = sizes.map(&:to_i)
    end
end
products_list = []
file = File.open('catalogo.txt', 'r')
data = file.readlines
file.close
data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
end
new_catalogue = []
File.open('nuevo_catalogo.txt', 'w')
products_list.each do |product|
     product.sizes.pop
     File.write('nuevo_catalogo.txt', "#{product.name}, #{product.sizes.join(', ')}\n", mode: 'a')
end