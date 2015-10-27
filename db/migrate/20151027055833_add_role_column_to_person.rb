class AddRoleColumnToPerson < ActiveRecord::Migration
  def change
    add_column :people, :role, :integer, :default => 1
  end
end
