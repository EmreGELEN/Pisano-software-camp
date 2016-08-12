# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  , Character.create(name: 'Luke', movie: movies.first)




6.times do
  User.create(first_name: Faker::Name.first_name,
             last_name: Faker::Name.last_name,
             password: Faker::Internet.password,
             email: Faker::Internet.safe_email,
             phone_number: Faker::PhoneNumber.cell_phone,
             profile_picture_url: Faker::Avatar.image
             )


end

User.all.each do |user|
 2.times do
  Listing.create(image_url: "http://www.elaziggunlukkiralikev.com/webimages/img-haber-18-elazig-gunluk-kiralik-ev-haber2.jpg",
                 title: "Şahane,muhteşem evler",
                 sharing_type: Listing.sharing_types.keys.sample,
                 guest_capacity: Faker::Number.between(1,10),
                 bed_capacity: Faker::Number.between(1,5),
                 daily_price: Faker::Commerce.price,
                 user_id: user.id

    )
end
end
