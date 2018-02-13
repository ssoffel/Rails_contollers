class CreateVillians < ActiveRecord::Migration[5.1]
  def change
    create_table :villians do |t|
      t.string :name, null: false
      t.string :nickname, null: false
      t.integer :power, null: false
      t.timestamps
    end
  end
end
