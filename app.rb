require 'sinatra/base'
require './lib/player'
require './lib/game'

  class Battle < Sinatra::Base
    enable :sessions

    get '/' do
      erb :index
    end

    post '/names' do
      player_1 = Player.new(params[:player_1_name])
      player_2 = Player.new(params[:player_2_name])
      $game = Game.new(player_1, player_2)
      redirect '/play'
    end

    get '/play' do
      erb :play, :locals => {:game => $game}
    end

    get '/attack' do
      @game = $game
      @game.attack(@game.opponent_of(@game.current_turn))
      erb :attack, :locals => {:game => $game}
    end

    post '/switch-turns' do
      $game.switch_turns
      redirect '/play'
    end

    run! if app_file == $0
  end