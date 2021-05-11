require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Hello JP"
end

get '/secret' do
  "Supersport news: Springboks will lose to the Lions very very badly"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:catform)
end