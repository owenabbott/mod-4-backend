# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




tagContent = ["repairs", "cleaning", "cooking", "rest"]

taskList = ["wash dishes", "take out the trash", "wash the dishes again", "call maintainance guy about the dimensional tear in the bottom of the sink that keeps endlessly filling it with dishes" ]

deadline = ["monday", "tuesday", "wednesday", "thursday", "friday"]

users = ["bot1", "bot2", "bot3", "bot4"]

password = "password"




10.times do
    User.create!({username: users.sample, password: "password"})
    Tag.create!({content: tagContent.sample})
    Todo.create!({user: User.all.sample, tag: Tag.all.sample, title: taskList.sample, deadline: deadline.sample})
end


