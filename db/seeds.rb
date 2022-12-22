# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding Data"
30.times do 
    Venue.create(
  price: Faker::Commerce.price,
  description: Faker::Lorem.paragraph,
  location: Faker::Address.city,
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: Faker::Avatar.image,
#   user_id: rand(1..User.all.size)
)
end



30.times do 
    Booking.create(
    duration: rand(1..72),
    num_guest: Faker::Number.between(from: 10, to: 300),
    venue_id: rand(1..Venue.all.size),
    startDate: DateTime.new(2022,6,rand(1..30),rand(1..19),rand(1.60)),
    endDate: DateTime.new(2022,6,rand(1..30),rand(6..19),rand(1.60))
)
end

30.times do
    Payment.create(
        venue_price: Faker::Commerce.price,
        booking_id: rand(1..Booking.all.size),
        # user_id: rand(1..User.all.size)
    )
    end


# 5.times do 
#     Result.create(
#       WBC: rand(3.5..10.5),
#       RBC: rand(4.5..6.0),
#       hemoglobin: rand(14.0..18.0),
#       hematocrit: rand(42.0..52.0),
#       platelets: rand(140..415),
#       sodium: rand(134..144),
#       potassium: rand(3.5..5.2),
#       bun: rand(9..20),
#       calcium: rand(8.7-10.2),
#       patient_id: 1,
#       test_date: DateTime.new(2022,6,rand(1..30),rand(1..19),rand(1.60))
#     )
#   end

puts "Done Data"