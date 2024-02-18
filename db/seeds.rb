# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contact_details = [
  { name: 'Sanket Panasuriya', number: '9876543210' },
  { name: 'Sanket Patel', number: '6355365761' },
  { name: 'Test User', number: '7418529632' },
  { name: 'Local Demo', number: '+91 9845217585' },
  { name: 'Admin', number: '6352418574' },
  { name: 'Super Admin', number: '8754963241' },
  { name: 'User 1', number: '8745632148' },
  { name: 'User 2', number: '0 123 6544 876' },
  { name: 'User 2', number: '+91 85794 62541' },
  { name: 'User 3', number: '6543 2198 711' },
  { name: 'User 4', number: '45632 96385' },
  { name: 'User 5', number: '98745 36542' },
  { name: 'User 6', number: '8545 125 463' },
]

contact_details.each do |detail|
  Contact.find_or_create_by(detail)
end
