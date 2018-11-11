class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/recipes" do
    erb :index
  end

  get "/recipes/:id" do
    erb :show
  end

  get "/recipes/:id/edit" do
    erb :edit
  end

  patch "/recipes/:id/" do

  end

  helpers do
    def current_recipe
      Recipe.find_by_id(params[:id])
    end

    def all_recipes

    end
  end

end
