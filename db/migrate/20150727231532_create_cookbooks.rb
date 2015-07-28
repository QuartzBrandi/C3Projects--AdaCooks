class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.string :name, required: true
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end