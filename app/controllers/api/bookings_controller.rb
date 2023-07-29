class Api::BookingsController < ApplicationController
  def create
  end

  def update
  end

  def list
    render json: bookings
  end

  private

  def bookings
    Booking.all.map do |booking|
      {
        service: {
          id: booking.service_id,
          title: Service.find(booking.service_id).title,
        },
        staff_member: {
          id: booking.staff_member_id,
          name: StaffMember.find(booking.staff_member_id).name,
        },
        customer: {
          id: booking.customer_id,
          name: Customer.find(booking.customer_id).name,
        },
        when: booking.date,
        status: booking.status
      }
    end
  end
end

