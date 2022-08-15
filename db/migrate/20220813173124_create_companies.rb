class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :founding_year
      t.string :headquarters
      t.string :logo
    end
  end
end
