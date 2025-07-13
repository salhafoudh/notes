# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Note.delete_all
Note.create(name: 'prva poznamka', body: 'vyper pradlo')
Note.create(name: 'druha poznamka', body: 'poskladaj pradlo')
Note.create(name: 'tretia poznamka', body: 'vyber umyvacku')
Note.create(name: 'stvrta poznamka', body: 'odloz hracky')

Item.delete_all
Item.create(name: 'mrkva', expected_cost: '0.3')
Item.create(name: 'kava', expected_cost: '23.3')
