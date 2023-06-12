class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates :recipe, uniqueness: { scope: :ingredient, message: "relation already created" }
end
