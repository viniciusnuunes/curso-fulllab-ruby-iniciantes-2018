# Criando uma classe com getters publicos e
# os setters internos com variáveis de instancia
class Car
  # attr_reader ele vai gerar somente o getter de um atributo
  attr_reader :name, :color, :model
 
  # construtor da classe
  def initialize(name, color, model)
	# Agora... ao invés de utilizarmos um setter,
	# vamos utilizar variáveis de instâncias, que são variáveis
	# que podem ser declaradas a qualquer momento dentro de um objeto e compartilhadas
	# por todos os membros dentro do próprio objeto que ela foi declarada.
	# Contudo, uma variável de instancia não é vista fora do objeto onde
	# foi declarada, é interna.
    @name  = name
    @color = color
    @model = model
  end
end

car1 = Car.new('Corolla', 'Azul', 'Sedan')

puts "nome do carro: #{car1.name}"
puts "cor do carro: #{car1.color}"
puts "modelo do carro: #{car1.model}"

# Tentando alterar a propriedade nome do carro
# é esperado um erro, ele não vai encontrar o
# name=, pois com o attr_reader, declaramos apenas o 
# name.
car1.name = 'Civic'