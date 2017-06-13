# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
  #Movie.create       ([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  #Character.create      (name: 'Luke', movie: movies.first)

Product.create(
  name: 'Cereal',
  description: 'Frosted Flakes',
  price_in_cents: 6.99
)

Product.create(
  name: 'Milk',
  description: 'Dairyland 2%',
  price_in_cents: 3.99
)

Product.create(
  name: 'Bread',
  description: 'Multigrain',
  price_in_cents: 4.99
)

Product.create(
  name: 'Poultry',
  description: 'Terriyaki Chicken',
  price_in_cents: 10.99
)
