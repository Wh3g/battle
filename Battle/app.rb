require 'sinatra/base'
require 'sinatra/reloader'
require 'capybara'
require './lib/player'
require './lib/game'



class Battle < Sinatra::Base
  enable :sessions
  
  configure :development do
    register Sinatra::Reloader
  end
  
  get '/' do
    'Testing infrastucture working'
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.switch_turn unless (@game.player_1.hit_points == 100 && @game.player_2.hit_points == 100)
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    erb(:attack)
  end

  run! if app_file == $0
end