class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
  		t.string :dish
  		t.integer :price
  	end
  end
end
