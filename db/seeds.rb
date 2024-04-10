# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cats = [
  {
    name: 'Garfield',
    age: 12,
    enjoys: 'lasagna and kicking Odie',
    image: 'https://i.ebayimg.com/images/g/m5IAAOSw03lY7miz/s-l1600.jpg'
  },
  {
    name: 'Oliver',
    age: 1,
    enjoys: 'being super posh',
    image:
      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a6e1398e-141f-4f77-8212-12c7f8c40dff/dg1ik98-ff3c3b0a-09c0-4160-9d05-9af6d9210c6b.jpg/v1/fit/w_600,h_600,q_70,strp/31_cats_of_july__oliver_by_jrg2004_dg1ik98-375w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjAwIiwicGF0aCI6IlwvZlwvYTZlMTM5OGUtMTQxZi00Zjc3LTgyMTItMTJjN2Y4YzQwZGZmXC9kZzFpazk4LWZmM2MzYjBhLTA5YzAtNDE2MC05ZDA1LTlhZjZkOTIxMGM2Yi5qcGciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.u1bYfk_hSHCfwo-4lB3gtERIbIvcaCXh8vHzhSHg6p0'
  },
  {
    name: 'Sylvester',
    age: 6,
    enjoys: 'sufferin succotash',
    image:
      'https://upload.wikimedia.org/wikipedia/en/thumb/8/82/Sylvester_the_Cat.svg/1024px-Sylvester_the_Cat.svg.png'
  },
  {
    name: 'Felix',
    age: 103,
    enjoys: "being the very first Macy's Thanksgiving parade balloon",
    image:
      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c974406c-cdbc-4a3c-9e4a-6ef95c9e107d/dciv37m-4cf33216-a0d5-4c55-98f0-1c7b1137d0ae.jpg/v1/fit/w_828,h_1072,q_70,strp/felix_el_gato_by_edwardcrow_dciv37m-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTMyNiIsInBhdGgiOiJcL2ZcL2M5NzQ0MDZjLWNkYmMtNGEzYy05ZTRhLTZlZjk1YzllMTA3ZFwvZGNpdjM3bS00Y2YzMzIxNi1hMGQ1LTRjNTUtOThmMC0xYzdiMTEzN2QwYWUuanBnIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.L-mtRfhgW-8baz60mp3I44KiKOs3Zu2hUzepCYFkIlI'
  },
  {
    name: 'Cheshire Cat',
    age: 13,
    enjoys: 'just smiling and smiling',
    image:
      'https://miro.medium.com/v2/resize:fit:640/1*iNEhN3wH4HhCczK0kw-1MQ.jpeg'
  },
  {
    name: 'Rajah',
    age: 4,
    enjoys: 'hanging with Princess Jasmine',
    image:
      'https://www.brit.co/media-library/image.jpg?id=21434534&width=2400&height=2400'
  },
  {
    name: 'Marie, Toulouse, and Berlioz',
    age: 1,
    enjoys: 'playing piano',
    image:
      'https://adultpaintbynumber.com/wp-content/uploads/2022/02/marie-toulouse-and-berlioz-paint-by-numbers.jpg'
  }
]

cats.each do |cat|
  Cat.create(cat)
  puts "Creating cat: #{cat}"
end