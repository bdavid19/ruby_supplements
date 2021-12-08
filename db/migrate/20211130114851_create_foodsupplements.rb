class CreateFoodsupplements < ActiveRecord::Migration[6.1]
  def change
    create_table :foodsupplements do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.integer :rating
      t.string :articlenum

      t.timestamps
    end
  end
end
