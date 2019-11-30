require 'pry'

# probably would be a good idea to build some mini functions to align with DRY 
def nyc_pigeon_organizer(data)
  # write your code here!
  
  # iterate over hash of hash to get unique names of pigeons 
  # get high level keys and then deeper level keys
  # get 7 unique pigeon names -- done 
  # okay now what -- goal is to reorganize hash
  # check out structure, what's the best way to get color, gender, lives 
  # data.keys = [:color, :gender, :lives]
  
   
  # purple -- data[data.keys[0]].keys[0]
  # color -- data.keys[0]
  result_hash = {}
  array_keys = data.keys 
  length_first_level_key_array = array_keys.length
  
  # second_level_keys = []
  pigeon_names = []
  i = 0 
  # main_keys = data.keys
  # we know that there are only 3 main keys, in the future for flexibility would not hard code this 
  
  color_names = data[data.keys[0]].keys
  gender_names = data[data.keys[1]].keys
  lives_names = data[data.keys[2]].keys
  
  
  while i <  array_keys.length do
    
    # second_level_keys << data[array_keys[i]].keys  #[:purple, :grey, :white, :brown], [:male, :female], etc.
    j = 0 
    
    while j < data[array_keys[i]].keys.length do 
      k = 0 
      
      while k < data[data.keys[i]][data[data.keys[i]].keys[j]].length do # data[data.keys[i]][data[data.keys[j]].keys[k]]
  # data[data.keys[0]][data[data.keys[0]].keys[0]][0]
        # purple -- data[data.keys[0]].keys[0]
        # color -- data.keys[0]
        if !pigeon_names.include?(data[data.keys[i]][data[data.keys[i]].keys[j]][k])
          pigeon_names << data[data.keys[i]][data[data.keys[i]].keys[j]][k]
        end
        k += 1
      end
      j += 1     
    end
    
    i += 1 
  end
  # second_level_keys
  pigeon_names # yay we got the names 
  
  
  m = 0 
  while m < pigeon_names.length do 
    result_hash[pigeon_names[m]] = {}
    n = 0
    
    while n < data.keys.length do 
      result_hash[pigeon_names[m]][data.keys[n]] = {} # add pigeon_names here maybe 
      
      n += 1
        
    end
    m += 1 
    
  end
  
  # loop through to color then purple as in first part of method here then use conditional to check if name is in array
  
  
  
  # loop through colors here to get them into result_hash if true or something similar
  # data[data.keys[0]] -- colors
  # data[data.keys[0]].keys[0] -- purple
  # data[data.keys[0]][data[data.keys[0]].keys[0]] -- names in purple
  # ind = 0 
  
  # while ind < color_names.length do
    
  #   if data[:color][color_names[0]] == pigeon_names[0]
  #     result_hash[pigeon_names[0]][:color] = color_names[0]
  #   end 
  #   ind += 1
  # end
  
  # need to initialize array for color, gender, and lives -- actually just for color 
  # z = 0 # 4
  # while z < color_names.length do
  #   q = 0 # 7
  #   while q < pigeon_names.length do
  #     result_hash[pigeon_names[q]][:color] = []
  #     if data[:color][color_names[z]].include?(pigeon_names[q])
  #       result_hash[pigeon_names[q]][:color] << color_names[z].to_s
  #     end
  #     q += 1
  #   end
  # binding.pry
  # # if data[:]
  #   z += 1 
  # end 
  
  while i <  array_keys.length do
    
    j = 0 
    
    while j < data[array_keys[i]].keys.length do 
      1 
      
      k = 0 
      while k < pigeon_names.length do 
        result_hash[pigeon_names[k]][:color] = []
        if data[:color][color_names[i]].include?(pigeon_names[k])
          result_hash[pigeon_names[k]][:color] << color_names[i].to_s
        end
        k += 1
      end
      # while k < data[data.keys[i]][data[data.keys[i]].keys[j]].length do 
      #   if !pigeon_names.include?(data[data.keys[i]][data[data.keys[i]].keys[j]][k])
      #     pigeon_names << data[data.keys[i]][data[data.keys[i]].keys[j]][k]
      #   end
        
      
      j += 1     
    end
    
    i += 1 
  end
  
  # binding.pry
  result_hash
  
end