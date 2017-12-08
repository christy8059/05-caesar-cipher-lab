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





