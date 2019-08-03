class ApplicationController < ActionController::Base
  before_action :initialize_contentful

  private
  def initialize_contentful
    Contentful::Client.new(
      space: ENV['SPACE_ID'],
      access_token: ENV['ACCESS_TOKEN'],
      dynamic_entries: :auto
    )
  end
end
