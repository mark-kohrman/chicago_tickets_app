class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :date
      t.string :ticket_no
      t.string :street_no
      t.string :direction
      t.string :street_name
      t.string :violation_description

      t.timestamps
    end
  end
end
