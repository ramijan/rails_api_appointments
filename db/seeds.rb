# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


customers = 2.times.map do
  Customer.create!(
    full_name: Faker::Name.name
  )
end

10.times.map do
  client = Client.create!(
    email: Faker::Internet.email
  )

  # past
  start_at = DateTime.now - (rand(1..50)).days
  end_at = start_at + 1.hour
  Appointment.create!(
    start_at: start_at,
    end_at: end_at,
    client_id: client.id,
    customer_id: customers.sample.id
  )

  # future
  start_at = DateTime.now + (rand(1..50)).days
  end_at = start_at + 1.hour

  Appointment.create!(
      start_at: start_at,
      end_at: end_at,
      client_id: client.id,
      customer_id: customers.sample.id
  )
end

