class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.eager_load(:client, :customer).all

    render json: @appointments.as_json(only: [:start_at, :end_at], include: {
      customer: {only: [:full_name, :created_at, :updated_at]},
      client: {only: [:email, :created_at, :updated_at]},
    })
  end
end
