class Recipe < ApplicationRecord

    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    validates :name, presence: true
    

    accepts_nested_attributes_for :ingredients
    accepts_nested_attributes_for :recipe_ingredients

end
