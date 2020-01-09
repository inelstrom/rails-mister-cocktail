class AddCocktailIdToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :cocktail_id, :integer
    add_index :doses, :cocktail_id
  end
end
