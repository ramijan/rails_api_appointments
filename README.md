# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...




customer
* id
* full_name

client
* id
* email


appointment
* customer_id   foreign key
* client_id   foreign key
* start_at timestamps
* end_at timestamps



/appointments
[
  {
    start_at: '11:00 am',
    end_at: '11:30 am'
    customer: {
      id: 1,
      full_name: 'Rami'
    },
    client: {
      id: 2,
      email: 'rami@test.com'
    }
  }, {
    # ...
  }
]
