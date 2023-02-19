class MainController < ApplicationController
  def index
    options = {:item => 'item', :expires_in => 24.hours }
    Rails.cache = Dalli::Client.new('localhost:11211', options)
    Rails.cache.fetch "item" do
    @items = Item.all
    end
  end
end
