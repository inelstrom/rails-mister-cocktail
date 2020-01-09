class AddIngredientIdToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :ingredient_id, :integer
    add_index :doses, :ingredient_id
  end
end
