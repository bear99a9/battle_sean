require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post '/names' do
     $player_1_name = Player.new(params[:player_1_name])
     $player_2_name = Player.new(params[:player_2_name])
     $player_2_hp = Player.new(params[:player_2_hp])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name.name
    @player_2_name = $player_2_name.name
    @player_2_hp = $player_2_hp.hp
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1_name.name
    @player_2_name = $player_2_name.name
    @player_2_hp = $player_2_hp.hp
    erb :attack
  end

  run! if app_file == $0
end
