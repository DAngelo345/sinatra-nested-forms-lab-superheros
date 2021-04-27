require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do 

        erb :team
    end
    
    post "/teams" do 
    binding.pry
        @teams = Team.new(params[:team])
        params[:team][:name].each do |details|

         
        end
       
        erb:super_hero
    end


end
