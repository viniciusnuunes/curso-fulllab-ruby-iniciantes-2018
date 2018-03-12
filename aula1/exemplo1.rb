# Declarando uma classe
#--------------------------------------------------------
# Classe no ruby e assim como em qualquer outra linguagem
# orientada a objetos, é um objeto onde você poderá 
# utilizar métodos, atributos, criar operadores, entre
# outras funcionalidades.
class User
  # Declarando atributos com o 'attr_accessor'.
  #--------------------------------------------------------
  # Este método, ele automaticamente gera para você o 'getter' e o 'setter'
  # de um determinado atributo. Lembrando que você pode passar quantos 
  # atributos quiser.
  attr_accessor :name, :age

  # Criando um setter manualmente. Caso não utilize o attr_accessor ou o attr_writer,
  # você pode criá-lo manualmente:
  def email=(value)
    @email = value
  end

  # Criando um 'getter' manualmente. Caso não utilize o attr_accessor ou o attr_writer,
  # você pode criá-lo manualmente:
  def email
    @email
  end

  # Construtor da classe
  # -------------------------------------------------------
  # O initialize, é o construtor de uma classe no Ruby. 
  # É o padrão da linguagem.
  def initialize(name, age)
	# Como eu declarei um setter para o atributo 'name' logo acima,
	# eu preciso utilizar a sintaxe: self.$attribute = $value
	# para atribuir um valor ao setter. Essa deve usar 
	# sintaxe para nao confundir o interpretador do Ruby, pois
	# se vc usar name = name, ele vai achar que vc esta setando
	# o mesmo valor para a mesma variável
    self.name = name
    self.age  = age
  end
end

# Criando uma instancia da classe User.
# Para criar uma instancia de uma classe,
# basta utilizar o método 'new'.
u = User.new('lucas')

# Como os atributos possuem getters e setters públicos
# posso alterá-los fora do objeto User
u.email = 'lucas@fulllab.com.br'
u.age   = 67

puts "nome do usuario: #{u.name}"
puts "idade do usuario: #{u.age}"
puts "email do usuario: #{u.email}"