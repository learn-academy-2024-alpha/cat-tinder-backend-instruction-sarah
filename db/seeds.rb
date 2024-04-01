# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cats = [
  {
    name: 'Kevin',
    age: 7,
    enjoys: 'his Mickey Mouse toy',
    image: 'https://images.unsplash.com/photo-1548546738-8509cb246ed3?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  },
  {
    name: 'Toast',
    age: 4,
    enjoys: 'being in charge of everything',
    image: 'https://images.unsplash.com/photo-1573865526739-10659fec78a5?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  },
  {
    name: 'Raisins',
    age: 8,
    enjoys: 'sitting on the refridgerator and judging you',
    image: 'https://images.unsplash.com/photo-1574231164645-d6f0e8553590?q=80&w=2004&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  }
]

cats.each do |cat|
  Cat.create(cat)
  puts "Creating cat: #{cat}"
end