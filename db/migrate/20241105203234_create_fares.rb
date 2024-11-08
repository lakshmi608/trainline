class CreateFares < ActiveRecord::Migration[7.1]
  def change
    create_table :fares do |t|
      t.references :segment, null: false, foreign_key: true
      t.string :name
      t.integer :price_in_cents
      t.string :currency
      t.integer :comfort_class

      t.timestamps
    end
  end
end
