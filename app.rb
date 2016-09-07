require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "lib/team_data"

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @team_hash = TeamData.to_h
  erb :teams
end

get "/teams/:team" do
  @team_hash = TeamData.to_h
  @team = params[:team]
  erb :team
end

get "/positions" do
  @team_hash = TeamData.to_h
  erb :positions
end
