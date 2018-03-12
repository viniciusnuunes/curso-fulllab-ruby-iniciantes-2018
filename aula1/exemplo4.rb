# Hashes, os dicionarios do ruby
hash = {}

# Para atribuir uma chave e valor
# hash[$key] = $value

hash[:name] = 'lucas'
hash[:age]  = 24
# Um hash, aceita outro hash como chave, na verdade, ele aceita qualquer tipo de objeto como chave
hash[{ date: '20-09-2013'}] = 340
hash[90] = 'ola'

# ao inves de usar o indexador para atribuir um chave e valor, pode utilizar o metodo store tbm
hash.store(:email, 'lucas@fulllab.com.br') 
puts "Hash: #{hash}"

puts "All values: #{hash.values}"
puts "All keys: #{hash.keys}"

hash.each do |key, value|
  puts "Key: #{key} | Value: #{value}"
end

formatted_keys = hash.map do |key, value|
  "key-#{key}"
end

puts formatted_keys.inspect

# Criando um array de hashes
array_hashes = [
  { name: 'lucas1', age: 23, email: 'lucas1@gmail.com' },
  { name: 'lucas2', age: 33, email: 'lucas2@gmail.com' },
  { name: 'lucas3', age: 43 }
]

array_hashes.each do |hash|
  puts hash[:name]
  puts hash[:age]
end

array_hashes.each do |name:, age:, email: 90|
  puts 'Showing user\'s details'
  puts "Name: #{name}"
  puts "Age: #{age}"
  puts "Email: #{email}"
end

all_emails = array_hashes.map { |email: '', **| email }
puts "All emails: #{all_emails}"