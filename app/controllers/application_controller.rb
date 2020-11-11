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
  post '/recipes/id'

  get 'recipes/new' do
    erb :new
  end

  post '/show' do
    
  end

  get '/recipes/id' do
    @recipe = Recipe.find(params[:id])
    erb :a_recipe
  end
  # code actions here!

end
