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
  '<div style="border: 2px dashed red;"><img src="https://i.imgur.com/jFaSxym.png"></div>'
end