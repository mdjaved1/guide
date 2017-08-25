class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :tagline
      t.integer :user_id

      t.timestamps null: false
    end
  add_foreign_key :profiles, :users, column: :user_id, dependent: :destroy, :unique => true
  add_index :profiles, :user_id, unique: true
  end
end
