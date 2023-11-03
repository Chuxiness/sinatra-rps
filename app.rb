require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:homepage)
end

get("/rock") do
  comp_options = ["rock","paper","scissors"]
  @comp_move = comp_options.sample
  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else @outcome = "won"
  end
  erb(:zebra)
end

get("/paper") do
  comp_options = ["rock","paper","scissors"]
  @comp_move = comp_options.sample
  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else @outcome = "lost"
  end
  erb (:giraffe)
  
end

get("/scissors") do
  comp_options = ["rock","paper","scissors"]
  @comp_move = comp_options.sample
  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  else @outcome = "tied"
  end
  erb(:elephant)
end
