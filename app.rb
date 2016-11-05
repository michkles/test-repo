require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
	enable :sessions
	
  get '/' do
    @p1_name = "ea"
    @p2_name = "lrre"
    erb :index
   end

  post '/names' do
  	$p1 = Player.new(params[:name_p1])
  	$p2 = Player.new(params[:name_p2])
  	redirect '/attack'
  end	

  get '/attack' do
    @pal_name = $p1.name
    @pal_name2 = $p2.name 
    erb :attack
  end  

  # start the server if ruby file executed directly
  run! if app_file == $0
end
