module Api
  module V1
    module AutoComplete
      class RecipesController < Api::V1::BaseController
        def index
          render json: { hi: "Hola" }
        end
      end
    end
  end
end
