$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    # pp director_data
    row_index = 0
    d_total = 0
    while row_index < director_data[:movies].length do
      total = director_data[:movies][row_index][:worldwide_gross]
      d_total += total
      
    
    row_index += 1
    end
    return d_total
    

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  # nds
  # result = {}
  # director = nds[0][:name]
  # result[director] = {}
  row_index = 0
  grand_total = 0 
  while row_index < directors_database[0][:movies].length do
  total = directors_database[0][:movies][row_index][:worldwide_gross]
  grand_total += total
  
  row_index += 1
  end
  
  return grand_total
  
  
  # binding.pry
  # nil
end
