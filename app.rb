require 'sinatra/base'

class App < Sinatra::Base

  NEW_ITEMS = []
  get '/' do
    erb :index

  end

  get '/new_items' do
  erb :new_items
    end

  post '/' do
    NEW_ITEMS << (params['item_name'])
    redirect '/'
  end
end