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
    ITEMS_LIST
  end
end

# Link goes to Show page √
# Show page displays item name
# Access the items in the array
