require_relative './lib/gameengine'
require_relative './lib/player'
require 'bundler'
Bundler.require

module Game
  class RPS_App < Sinatra::Application

    game = GameEngine.new

    get '/throw' do
      erb :throw
    end

    get '/throw/:move' do
      @player_move = game.player.move = params[:move].to_s
      @computer_move = game.computer.random_move

      @message = game.win_or_lose

      erb :move
    end
  end
end