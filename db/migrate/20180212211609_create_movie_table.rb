class CreateMovieTable < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.integer :super_id
      t.integer :villian_id
      t.timestamps
    end
  end
end
