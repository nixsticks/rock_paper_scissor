require_relative './lib/gameengine'
require_relative './lib/player'
require 'bundler'
Bundler.require

module Game
  class RPS_App < Sinatra::Application

    game = GameEngine.new

    get '/throw' do
      "Hello"
    end

    get '/throw/:move' do
      game.player.move = params[:move].to_s
      game.computer.random_move

      @message = game.win_or_lose

      erb :move
    end
  end
end