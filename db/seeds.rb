# This file should contain all the record creation needed to seed the database with its default values.
service_1 = Service.create(title: 'Nails', price: 5_00)
service_2 = Service.create(title: 'Massage', price: 10_00)
service_3 = Service.create(title: 'Haircut', price: 20_00)

staff_member_1 = StaffMember.create(name: 'Rachel')
staff_member_2 = StaffMember.create(name: 'Phoebe')
staff_member_3 = StaffMember.create(name: 'Monica')

customer_1 = Customer.create(name: 'Joey')
customer_2 = Customer.create(name: 'Chandler')
customer_3 = Customer.create(name: 'Ross')

booking_1 = Booking.create({
  service_id: service_1.id, 
  staff_member_id: staff_member_1.id,
  customer_id: customer_1.id,
  date: DateTime.now,
  status: 1
})

booking_2 = Booking.create({
  service_id: service_2.id, 
  staff_member_id: staff_member_2.id,
  customer_id: customer_2.id,
  date: DateTime.now + 1.hour,
  status: 1
})

booking_3 = Booking.create({
  service_id: service_3.id, 
  staff_member_id: staff_member_3.id,
  customer_id: customer_3.id,
  date: DateTime.now + 2.hours,
  status: 1
})