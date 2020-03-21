class Recipe < ApplicationRecord

    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    validates :name, presence: true
    
    accepts_nested_attributes_for :ingredients
    accepts_nested_attributes_for :recipe_ingredients

    def self.sort_by_asc_order
        order(:created_at)
    end

    def self.sort_by_desc_order
        order(created_at: :desc)
    end

    # def self.
end
