require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  # we know data how is organized
  # first hash of hash, then array's 
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end

        new_hash[name][key] << new_value.to_s

      end
    end
  end
  # binding.pry
  new_hash
end



# # figure out more efficient and DRY way to iterate over HoH

# # probably would be a good idea to build some mini functions to align with DRY 
# def nyc_pigeon_organizer(data)

#   result_hash = {}
#   array_keys = data.keys 
#   pigeon_names = []
#   i = 0 
  
#   # we know that there are only 3 main keys, in the future for flexibility would not hard code this 
#   color_names = data[data.keys[0]].keys
#   gender_names = data[data.keys[1]].keys
#   lives_names = data[data.keys[2]].keys
  
  
#   while i < array_keys.length do
#     j = 0 
#     while j < data[array_keys[i]].keys.length do 
#       k = 0 
#       while k < data[data.keys[i]][data[data.keys[i]].keys[j]].length do 
#         if !pigeon_names.include?(data[data.keys[i]][data[data.keys[i]].keys[j]][k])
#           pigeon_names << data[data.keys[i]][data[data.keys[i]].keys[j]][k]
#         end
#         k += 1
#       end
#       j += 1     
#     end
#     i += 1 
#   end
#   pigeon_names # yay we got the names 
  
#   m = 0 
#   while m < pigeon_names.length do 
#     result_hash[pigeon_names[m]] = {}
#     n = 0
#     while n < data.keys.length do 
#       result_hash[pigeon_names[m]][data.keys[n]] = {}  
#       n += 1
#     end
#     m += 1 
#   end
  
#   # loop through to color then purple as in first part of method here then use conditional to check if name is in array
#   # loop through colors here to get them into result_hash if true or something similar
#   # data[data.keys[0]] -- colors
#   # data[data.keys[0]].keys[0] -- purple
#   # data[data.keys[0]][data[data.keys[0]].keys[0]] -- names in purple

  
#   # need to initialize array for color, gender, and lives -- actually just for color 
#   # z = 0 # 4
#   # while z < color_names.length do
#   #   q = 0 # 7
#   #   while q < pigeon_names.length do
#   #     result_hash[pigeon_names[q]][:color] = []
#   #     if data[:color][color_names[z]].include?(pigeon_names[q])
#   #       result_hash[pigeon_names[q]][:color] << color_names[z].to_s
#   #     end
#   #     q += 1
#   #   end
#   # binding.pry
#   # # if data[:]
#   #   z += 1 
#   # end 
  
#   # loop through color hash 
#   # to get colors for theo and others
#   # make a method that is a loop based on length or something
  
#   color_hash = data[data.keys[0]]
#   gender_hash = data[data.keys[1]]
  
#   color_hash.reduce(nil) do |memo, (key, value)|
#     i = 0 
#     while i < pigeon_names.length do 
#       result_hash[pigeon_names[i]][:color] = []
#       if value.include?(pigeon_names[i])
#         result_hash[pigeon_names[i]][:color] << key.to_s
    
#       end
#       i += 1 
#     end
#   memo
#   end
#   result_hash
#   binding.pry
# end
#   # x = 0
#   # while x < color_names.length do
#   #   y = 0 
#   #   while y < pigeon_names.length do
#   #     result_hash[pigeon_names[y]][:color] = []
#   #     if color_hash[:purple].include?(pigeon_names[y])
#   #       result_hash[pigeon_names[y]][:color] << color_names[x].to_s
#   #     end
#   #     y += 1 
#   #   end
#   #   x += 1 
#   # end
  
  
#   # a = 0
#   # while a < gender_names.length do
#   #   b = 0 
#   #   while b < pigeon_names.length do
#   #     result_hash[pigeon_names[b]][:gender] = []
    
#   #     if gender_hash[:male].include?(pigeon_names[b])
        
#   #       result_hash[pigeon_names[b]][:gender] << "male"
#   #     else
#   #       result_hash[pigeon_names[b]][:gender] << "female"
#   #     end
#   #     b += 1 
#   #   end
#   # a += 1 
#   # end