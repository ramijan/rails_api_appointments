class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :customer

  scope :active, -> { where('start_at > ?', DateTime.now) }

  # TODO: validation around start_at / end_at   start_at < end_at
end
