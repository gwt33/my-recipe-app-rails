Recipe App

User (devise)
    - has_many :recipes
    - has_many :ingredients, through: :recipes
    - name (add later?)
    - email
    - password
    <!-- - has_many :categories -->

Recipe
    - belongs_to :user
    - has_many :ingredients
    - description
    <!-- - belongs_to :category -->

RecipeIngredients (join table)
    - belongs to recipes
    - belongs to ingredients

Ingredients
    - belongs_to :recipe
    - has_many :recipes, through: :recipe_ingredients
    - name

<!-- Categories (join table)
    - belongs_to :user
    - belongs_to :recipe
    - content -->