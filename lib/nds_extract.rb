$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
movie_index = 0
gross_total = 0
while movie_index < director_data[:movies].length do
  gross_total += director_data[:movies][movie_index][:worldwide_gross]
  movie_index += 1
end
gross_total
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  name_index = 0
  while name_index < nds.length do
    director = nds[name_index]
    result[director[:name]] = gross_for_director(director)
    name_index += 1
  end
  result
end
