class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect '/recipes'
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  post '/recipes/:id' do

  end

  get '/recipes/id' do
    @recipe = Recipe.find(params[:id])
    erb :show
  end
  # code actions here!

end
