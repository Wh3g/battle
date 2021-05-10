require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Hello JP"
end

get '/secret' do
  "Supersport news: Springboks will lose to the Lions very very badly"
end

get '/football' do
  "Man Utd stopped Man City from winning the Premier League"
end



get '/cat' do
  @name_arr = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end