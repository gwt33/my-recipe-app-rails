class Recipe < ApplicationRecord

    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    validates :name, presence: true
    
    accepts_nested_attributes_for :ingredients
    accepts_nested_attributes_for :recipe_ingredients

    # def self.asc_order_created_at
    #     order(:created_at)
    # end

    # scope :asc_order_created_at, -> ( order(:created_at) )

    # def self.desc_order_created_at
    #     order(created_at: :desc)
    # end

    # scope :desc_order_created_at, -> ( order(created_at: :desc) )

end
