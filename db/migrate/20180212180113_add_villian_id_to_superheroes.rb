class AddVillianIdToSuperheroes < ActiveRecord::Migration[5.1]
  def change
    add_column :superheroes, :villian_id, :integer
  end
end
