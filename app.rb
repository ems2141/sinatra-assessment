require 'sinatra/base'

class App<Sinatra::Application
  NEW_PRODUCT = ""

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/' do
    NEW_PRODUCT = params['new_product']
    erb :index
  end

end