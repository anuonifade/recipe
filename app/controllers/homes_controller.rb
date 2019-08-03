class HomesController < ApplicationController

  def index
    @contentful_client.entries(content_type: 'recipe')
  end
end
