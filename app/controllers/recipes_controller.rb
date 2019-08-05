class RecipesController < ApplicationController
  def index
    @recipe_info = @contentful_client.entry(id: get_recipe_id[:id])
  end

  private
  def get_recipe_id
    params.permit(:id)
  end
end
