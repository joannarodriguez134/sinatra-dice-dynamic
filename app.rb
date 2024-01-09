require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

# colon makes it dynamic
get("/dice/:zebra/:sides") do
  @num_dice = params.fetch("zebra").to_i

  @num_sides = params.fetch("sides").to_i

  @rolls = []
  @num_dice.times do
    die = rand(1..@num_sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
