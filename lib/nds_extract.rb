$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# array(of directors), hash(name, movies), array(of movies), hash(title, studio, worldwide_gross, release_year)
def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure that you know what you're starting with!
  # The Hash result should be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  # Use loops, variables and the accessing method, [], to loop through the NDS and total up all the grosses
  dir_index = 0
  while dir_index < nds.length do
    movie_index = 0
    dir_gross = 0
    while movie_index < nds[dir_index][:movies].length do
      dir_gross += nds[dir_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    result[nds[dir_index][:name]] = dir_gross
    dir_index += 1
  end
  result
end
