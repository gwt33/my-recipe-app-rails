Recipe App

User
    - has_many :recipes
    - has_many :ingredients, through: :recipes
    - has_many :categories
    - name
    - email
    - password

Recipe (join table)
    - belongs_to :user
    - belongs_to :category
    - has_many :ingredients
    - has_many :directions
    - description

Ingredients
    - belongs_to :recipe
    - has_many :users, through: :recipes
    - content

RecipeIngredients
    - belongs to recipes
    - belongs to ingredients

<!-- Categories (join table)
    - belongs_to :user
    - belongs_to :recipe
    - content -->