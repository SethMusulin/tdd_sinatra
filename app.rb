require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new_items' do
  erb :new_items
    end
end