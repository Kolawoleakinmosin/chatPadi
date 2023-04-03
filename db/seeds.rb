# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting all users"

User.destroy_all

puts "creating users"

User.create!(email: 'kolawole@gmail.com', password: '123456', nickname: "iam_sirkay")

puts "Users created"

puts "Deleting all chatrooms"
Chatroom.destroy_all

puts "creating chatrooms"

Chatroom.create(name: "general")
puts "Chatrooms created"
