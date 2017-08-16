class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.references :user, index: true, foreign_key: true
      t.references :meetup, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
