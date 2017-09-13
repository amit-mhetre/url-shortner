class HomeController < ApplicationController

  # Show top 10 most visited links
  def index
    # @link = Link.new
    @links = Link.order(clicks: :desc).first(10)
  end

end
