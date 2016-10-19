# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create(name:"Jake", email:"jake@jake.com", username:"ja12ke", balance:99.99)
User.create(name:"Jake", email:"jake@jake.com", handle:"jake", balance:99.99)
User.create(name:"Miriam1", email:"miriam@miriam.com", handle:"miriam", balance:89.99)
names = ["Alex", "Fanisa", "Jared","Luca", "Sam"]
hosts = ["gmail", "yahoo", "hotmail"]
tlds = [".net", ".edu"]

emails = ["jake@gmail.com", "alex@gmail.com", "luca@gmail.com", "andy@gmail.com", "buzz@gmail.com"]


counter = 0
names.each do |name|

        User.create(name: name, email: emails[counter], handle:"jake", balance:99.99)
        counter = counter + 1
end
