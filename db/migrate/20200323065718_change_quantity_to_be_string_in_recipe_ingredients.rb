class ChangeQuantityToBeStringInRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column :recipe_ingredients, :quantity, :string
    end
  
    def down
      change_column :recipe_ingredients, :quantity, :string
    end
  end
end
