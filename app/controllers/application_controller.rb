class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/recipes" do
    erb :index
  end

  helpers do
    def display_recipes 
      
    end
  end

end
