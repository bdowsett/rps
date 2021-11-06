require "sinatra/base"
require "sinatra/reloader"
require "./lib/player"
require "./lib/game"

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

get '/' do 
  erb :home
end 

post "/name" do 
$player = Player.new(params[:player_name])
redirect '/play'
end

get '/play' do
  @player = $player
  erb :play
end 

post "/value" do
  $game = Game.new
  $result = $game.rps(params[:rps])
  $computer = $game.computer
  $choice = params[:rps]
  redirect '/result'
end 

 get '/result' do
  @computer = $computer
  @choice = $choice
  @result = $result
  erb :result
 end 

run! if app_file == $0

end 
