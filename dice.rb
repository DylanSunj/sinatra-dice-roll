
require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/") do
  "<h1> Dice Roll </h1> 
    <body> 
      <ul> 
        <li> <a href=https://ideal-chainsaw-p449xgjx6qv36wx-4567.app.github.dev/dice/2/6 target=_blank>Roll two six-sided die </a> 
        <li> <a href=https://ideal-chainsaw-p449xgjx6qv36wx-4567.app.github.dev/dice/2/10 target=_blank>Roll two ten-sided die </a>
        <li> <a href=https://ideal-chainsaw-p449xgjx6qv36wx-4567.app.github.dev/dice/1/20 target=_blank>Roll one twenty-sided die </a>  
        <li> <a href=https://ideal-chainsaw-p449xgjx6qv36wx-4567.app.github.dev/dice/5/4 target=_blank>Roll five four-sided die </a> 
      </ul>
    </body>
  "

end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get("/dice/2/10") do 
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die 

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get("/dice/1/20") do 
  first_die = rand(1..20)
  sum = first_die 

  outcome = "You rolled a #{first_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die 

  outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, and a #{fourth_die} for a total of #{sum}"

  	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end
