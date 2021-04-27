require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do 

        erb :team
    end
    
    post "/teams" do 
        # @team = params[:team]
        # # binding.pry
        # @members = params[:team][:members]
      
        #     @members.each do |hero|
        #         binding.pry
        #         @heroname << hero[:name]
        # end
        # @members post "/teams" do 
        @team = params[:team]
        @members =[]
        params[:team][:members].each do |details|
            @members << details
        end
        @members
        # binding.pry

       
       
        erb:super_hero
    end


end
