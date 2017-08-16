class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :comment
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
