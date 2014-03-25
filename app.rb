require 'sinatra/base'

class App < Sinatra::Base

  set :all_items, ['List Item One']

  get '/' do
    erb :index
  end

  get '/items' do
    erb :items, locals: {items: settings.all_items}
  end

  get '/items/new' do
    erb :new_items
  end

  post '/items' do
    settings.all_items << params[:item_name]
    redirect "/items"
  end
end