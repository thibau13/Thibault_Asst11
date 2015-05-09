# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create 3 Users
User.create(name: "Brad")
User.create(name: "Steven")
User.create(name: "Stacey")

# Create 3 Events
Event.create(name: "Meeting")
Event.create(name: "Presentation")
Event.create(name: "Training")

# Associate Events and Users as follows
# event_id | user_id
#-------------------
#     1         1
#     1         2

Event.find(1).users << User.find(1)
Event.find(2).users << User.find(1)
Event.find(3).users << User.find(1)

Event.find(1).users << User.find(2)
Event.find(2).users << User.find(2)

Event.find(1).users << User.find(3)
