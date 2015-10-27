class CreateIngredientsAndDishesWithRelationManyToMany < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end

    create_table :dishes do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end

    create_table :dishes_ingredients, id: false do |t|
      t.column :ingredient_id, :integer
      t.column :dish_id, :integer
    end
  end
end
