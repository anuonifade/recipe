class RecipesController < ApplicationController
  def index
    @recipe = @contentful_client.entry(get_recipe_id[:id].to_s)
  end

  private
  def get_recipe_id
    params.permit(:id)
  end
end
