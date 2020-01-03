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
  result = {}
  director_index = 0
  while director_index < nds.length do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    
  director_index += 1  
  end
  return result
  # result[director] = {}
  # row_index_1 = 0
  # while row_index_1 < nds.length do
  # director = nds[row_index_1][:name]
  # result[director] = {}
  
  #   row_index_2 = 0
  #   grand_total = 0
  #   while row_index_2 < directors_database[row_index_1][:movies].length do
  #     total = directors_database[row_index_1][:movies][row_index_2][:worldwide_gross]
  #     grand_total += total
      
  #   row_index_2 += 1
  #   end
  #   result[director] = grand_total
  # row_index_1 += 1
  # end
  # binding.pry
  # return director
  # return result[director] = {'total'=>grand_total}

end
