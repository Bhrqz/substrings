require 'pry'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Gimme a word"

word = gets.chomp.downcase

def substrings(word, dictionary)

  result ={}
  #binding.pry
  dictionary.each do |dictionary_element|

    if word.include?(dictionary_element) 
      puts dictionary_element
        if (result.include?(dictionary_element)) 
          puts "truif"
          result[dictionary_element] += 1
        #binding.pry  
        
        else 
          #binding.pry
          puts "tru if"
          result[dictionary_element] = 1
        end
      


    elsif dictionary_element.include?(word)
      puts dictionary_element
        if (result.include?(dictionary_element)) 
           puts "truelsif"
           result[dictionary_element] += 1
        
        #binding.pry
        else 
          puts "tru elsif"
          #binding.pry
          result[dictionary_element] = 1
        end
         

    end

  end
  puts result
  return result
end



substrings(word, dictionary)