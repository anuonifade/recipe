class HomesController < ApplicationController
  def index
    entries = @contentful_client.entries
  end
end
