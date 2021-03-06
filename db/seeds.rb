# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bird.destroy_all
Tree.destroy_all

maple = Tree.create(name: 'Maple')
oak = Tree.create(name: 'Oak')

Bird.create([
    {name: 'Big Bird', species: 'Sesame Street', tree: oak},
    {name: 'Tweety', species: 'Looney Tunes', tree: maple},
    {name: 'Woodstock', species: 'Peanuts', tree: maple}
])
