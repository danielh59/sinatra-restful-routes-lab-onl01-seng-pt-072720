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

  get '/new' do
    erb :new
  end

  get '/recipes/#{@recipe1.id}' do
    erb :a_recipe
  end
  # code actions here!

end
