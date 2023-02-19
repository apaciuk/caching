class MainController < ApplicationController
  def index
    Rails.cache.fetch "item", expires_in: 24.hours do
      @items = Item.all
    end
  end
end
