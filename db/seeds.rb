# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'creating restaurants...'
central = { name: 'central', address: 'barranco', phone_number: '123', category: 'italian' }
cosme = { name: 'cosme', address: 'miraflores', phone_number: '456', category: 'french' }
xinua = { name: 'xinua', address: 'san isidro', phone_number: '789', category: 'italian' }
titi = { name: 'titi', address: 'san borja', phone_number: '234', category: 'french' }
fan = { name: 'fan', address: 'miraflores', phone_number: '567', category: 'italian' }

Restaurant.create(central)
Restaurant.create(cosme)
Restaurant.create(xinua)
Restaurant.create(titi)
Restaurant.create(fan)

puts 'finished'
