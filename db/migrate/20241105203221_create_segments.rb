class CreateSegments < ActiveRecord::Migration[7.1]
  def change
    create_table :segments do |t|
      t.string :departure_station
      t.string :arrival_station
      t.datetime :departure_at
      t.datetime :arrival_at
      t.integer :duration_in_minutes
      t.integer :changeovers
      t.text :products
      t.text :service_agencies

      t.timestamps
    end
  end
end
