class ApplicationController < ActionController::Base
  before_action :contentful_client

  private
  def contentful_client
    @contentful_client ||= Contentful::Client.new(
      space: ENV['SPACE_ID'],
      access_token: ENV['ACCESS_TOKEN'],
      dynamic_entries: :auto
    )
  end
end
