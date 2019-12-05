require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
director_hash = {}
director_index = 0
while director_index < directors_database.length do
  key = directors_database[director_index][:name]

  director_gross = 0  ##  part of gross_for_director
  movie_index = 0  ##
  while movie_index < directors_database[director_index][:movies].length do ##
    director_gross += directors_database[director_index][:movies][movie_index][:worldwide_gross] ##
    director_hash[key] = director_gross
    movie_index += 1  ##
  end  ##
  director_index += 1
end
director_hash
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
director_gross = 0
  movie_len = director_data[:movies].length
  movie_index = 0
    while movie_index < movie_len.length do
     director_gross += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
  director_gross
end
