# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'public_urination_tickets.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Ticket.new
  t.date = row['NOV_ISSUED_DATE']
  t.ticket_no = row['NOV_NUMBER']
  t.street_no = row['STREET_NO']
  t.direction = row['DIR']
  t.street_name = row['STREET_NME']
  t.violation_description = row['VIOLATION_DESCRIPTION']
  t.save
  puts "This person was issued a ticket on the #{t.street_no} block of #{t.street_name} on #{t.date}"
end
puts csv_text

