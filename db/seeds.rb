# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Dream.destroy_all
User.destroy_all

user1 = User.create(name: 'jared matta', username: 'jaredmatta', password: 'abc')
user2 = User.create(name: 'waffles matta', username: 'wafflesmatta', password: 'abc')
user3 = User.create(name: 'chloe matta', username: 'chloematta', password: 'abc')

dream1 = Dream.create(date: 'june', description:'went to the moon', mood: 1, user: user1)
dream2 = Dream.create(date: 'march',  description:'deep sea diving', mood: 2, user: user2)
dream3 = Dream.create(date: 'may', description:'field trip to pluto', mood: 2, user: user3)