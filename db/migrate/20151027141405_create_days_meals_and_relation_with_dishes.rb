class CreateDaysMealsAndRelationWithDishes < ActiveRecord::Migration
  def change
    create_table :days_meals do |t|
      t.timestamp :date

      t.timestamps null: false
    end

    create_table :days_meals_dishes, id: false do |t|
      t.column :days_meal_id, :integer
      t.column :dish_id, :integer
    end
  end
end
