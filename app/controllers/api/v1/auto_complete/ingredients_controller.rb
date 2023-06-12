module Api
  module V1
    module AutoComplete
      class IngredientsController < Api::V1::BaseController
        def index
          ingredients = Ingredient.where("LOWER(name) LIKE '%#{name_ingredient_param}%'")
          render json: ingredients
        end

        private

        def name_ingredient_param
          params.require(:ingredient_name)
        end
      end
    end
  end
end
