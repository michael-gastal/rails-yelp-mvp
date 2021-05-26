puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
am = {
  name: 'AM',
  address: '9 Rue François Rocca, 13008 Marseille',
  category: 'french',
  phone_number: '04 91 24 83 63'
}
croq_nem_le_thai = {
  name: "Crog'Nem Le Thai",
  address: '15 Boulevard Raspail, 84000 Avignon',
  category: 'chinese',
  phone_number: '04 90 85 06 82'
}
pizzeria_de_la_tour = {
  name: 'Pizzeria de la Tour',
  address: '3 Rue Grande, 13570 Barbentane',
  category: 'italian',
  phone_number: '04 90 90 91 89'
}
le_romarin = {
  name: 'Le Romarin',
  address: '11 Avenue Bertherigues, 13570 Barbentane',
  category: 'french',
  phone_number: '04 90 95 58 43'
}
moma_sushi_avignon = {
  name: 'Moma Sushi Avignon',
  address: '1 Rue Henri Fabre, 84000 Avignon',
  category: 'japanese',
  phone_number: '04 32 75 09 09'
}
[am, croq_nem_le_thai, pizzeria_de_la_tour, le_romarin, moma_sushi_avignon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
