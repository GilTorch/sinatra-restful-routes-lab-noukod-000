class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    @recipe=Post.create(name:@params[:name],ingredients:@params[:ingredients],cook_time:@params[:cook_time])
    redirect('/recipes/#{@id}')
  end

  get '/recipes' do
    @recipes=Recipe.all
    erb :index
  end

  get '/recipes/:id' do
    erb :show
  end

  get '/recipes/:id/edit' do
    erb :edit
  end

  get '/recipes' do

  end

end
