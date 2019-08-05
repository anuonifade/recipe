class HomesController < ApplicationController

  def index
    @recipes = @contentful_client.entries(content_type: 'recipe')
  end
end
