# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [
  { name: 'Romance' },
  { name: 'SciFi' },
  { name: 'Mystery'},
  { name: 'Nonfiction'}
]

categories.each do |cat|
  if Category.where(name: cat[:name]).count < 1
    Category.create(cat)
    puts cat[:name] + ' category created in db'
  end
end
