require 'bundler'
Bundler.require

module Game
  class RPS_App < Sinatra::Application

    @game = GameEngine.new

    get '/throw' do

    end

    get '/throw/:type' do
      @game.player.move = params[:type]
      @game.computer.random_move

      @message = @game.win_or_lose

      erb :move
    end

# ### Create the game
# Our app will be played at the path `/throw`. To play, a user will hit `/throw/:type`, for example: `/throw/rock` will play rock.

# 1.  Define a route at `/throw` that responds to a get request and takes a single parameter called `:type`
# 2.  This route should randomly generate a move by the computer.
# 3.  The computer move and user move should be compared.
# 4.  The results of the match should be displayed on the page.
# 5.  

  end
end