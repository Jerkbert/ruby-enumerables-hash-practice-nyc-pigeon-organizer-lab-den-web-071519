require "pry"

pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |category, v| 
    binding.pry
    v.each do |subcategory, names|
   
      names.each do |name|
        
        if !new_hash[name] #if the name is not yet a key, iterate through, if it is a key move on. 
          
          new_hash[name] = {} #creates an empty hash with new key being name
        end
        
        if !new_hash[name][category]
          
          new_hash[name][category]=[] #adds category with an empty array to the empty hash
         
        end
        
        new_hash[name][category] << subcategory.to_s #throws the subcategory in to the empty array (was a symbol so must convert to string)
   
      end
    end
  end
  
  new_hash
        
end


      
puts nyc_pigeon_organizer(pigeon_data)
