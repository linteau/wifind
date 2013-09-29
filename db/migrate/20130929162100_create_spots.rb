class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :price
      t.string :speed
      t.integer :outlets
      t.text :review

      t.timestamps
    end
  end
end
