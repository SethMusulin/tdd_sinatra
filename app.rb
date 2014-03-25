require 'sinatra/base'

class App < Sinatra::Base

  ITEMS_LIST = []

  get '/' do
    erb :index
  end

  get '/items' do
    erb :items, locals: {items: ITEMS_LIST}
  end

  get '/items/new' do
    erb :new_items
  end

  post '/items' do
    ITEMS_LIST << params[:item_name]
    redirect '/items'
  end

  get '/show/:id' do
   id = params[:id].to_i
   item = ITEMS_LIST[id]
    erb :show, :locals => {:id => id, :item => item}
  end
end


