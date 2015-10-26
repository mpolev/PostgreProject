class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :room
      t.string :internal_phone

      t.timestamps null: false
    end
  end
end
