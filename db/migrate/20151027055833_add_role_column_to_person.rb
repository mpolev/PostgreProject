class AddRoleColumnToPerson < ActiveRecord::Migration
  def change
    add_column :people, :role, :integer, :default => 0
  end
end
