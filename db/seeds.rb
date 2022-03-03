# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(first_name: 'teste', last_name: 'seed', email: 'email@teste.com.br', password: '12345678')

Assignment.create(title: 'task 1', description: 'first task created by migration', schedule: Time.now, user: user)
Assignment.create(title: 'task 2', description: 'second task created by migration', schedule: Time.now, user: user)
Assignment.create(title: 'task 3', description: 'third task created by migration', schedule: Time.now, user: user)
Assignment.create(title: 'task 4', description: 'fourth task created by migration', schedule: Time.now, user: user)
