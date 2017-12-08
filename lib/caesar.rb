def caesar_encode(string,offset)
  # code  
  alphabet = [*('a'..'z')]                                                     
  string.split("").collect do |character|                                      
    if character == character.upcase && alphabet.include?(character.downcase)  
      sum = ((alphabet.index(character.downcase))+offset)%26                   
      character = alphabet[((alphabet.index(character.downcase))+offset)%26].upcase  
    elsif
      character == character.downcase && alphabet.include?(character.downcase)  
      sum = ((alphabet.index(character.downcase))+offset)%26                    
      character= alphabet[((alphabet.index(character.downcase))+offset)%26].downcase    
    else
      character                                                                
    end 
  end.join ("")                                                                 
end

puts "What would you like to encode?"
user_string = gets.chomp
puts "What do you want the offset to be?"
user_offset = gets.chomp.to_i
puts caesar_encode(user_string,user_offset)

#(Index + off set) % 26 


def caesar_decode(string,offset)
  caesar_encode(string,offset*-1)
#  alphabet = [*('a'..'z')]                                                     
#   string.split("").collect do |character|                                      
#     if character == character.upcase && alphabet.include?(character.downcase)   
#       diff = ((alphabet.index(character.downcase))+offset)%26                  
#       character = alphabet[((alphabet.index(character.downcase))-offset)%26].upcase 
#     elsif
#       character == character.downcase && alphabet.include?(character.downcase)  
#       diff = ((alphabet.index(character.downcase))+offset)%26                    
#       character= alphabet[((alphabet.index(character.downcase))-offset)%26].downcase  
#     else
#       character                                                               
#     end 
#   end.join ("")                                                                

end

puts "What would you like to decode?"
user_string = gets.chomp
puts "What do you want the offset to be?"
user_offset = gets.chomp.to_i
puts caesar_decode(user_string,user_offset)




