class CreateToys < ActiveRecord::Migration[6.1]
  def change
    create_table :toys do |t|
      t.string :name
      t.string :toy_type
      t.integer :rating
      t.integer :price
      t.string :logo
      t.integer :company_id
      t.integer :store_id
    end
  end
end
