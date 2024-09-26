class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :rev_checkin
      t.date :rev_checkout
      t.integer :rev_lengthofstay
      t.integer :rev_finalbill
      t.integer :rev_headcount

      t.timestamps
    end
  end
end
