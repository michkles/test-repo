require 'sinatra'

get '/' do
	redirect '/cat'
end

get '/secrets' do
	@secret = "fuck off"
	erb :secret
end

get '/cat' do
    erb :index
end	

post '/named-cat' do
	p params
	@name = params[:dupa]
	erb :index
end	

get '/cat-form' do
	erb :catform
end	
