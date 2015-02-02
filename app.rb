require 'sinatra'
require_relative './model/inventory'

get '/' do
  @active = 'home'
  erb :home
end

get '/items' do
  @active = 'items'
  @search = params[:search]
  if @search && @search.length > 0
    @items = Inventory.search(@search)
  else
    @items = Inventory.all
  end
  erb :items
end

get '/items/:id' do
  @active = 'items'
  @item = Inventory.find(params[:id].to_i)
  erb :item
end

get '/profile' do
  @active = 'about'
  erb :about
end