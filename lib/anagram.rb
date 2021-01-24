require 'pry' # Your code goes here!

class Anagram

    attr_accessor :anagrams

    def initialize(anagrams)
        @anagrams = anagrams
    end

    def are_anagrams(anagrams, array)
        anagrams_as_array = anagrams.split("").sort
        array_as_array = array.split("").sort
        if anagrams_as_array == array_as_array
            return true
        else 
            return false
        end
    end

    def match(array)
        result_array = []
        array.each do |x|
            if are_anagrams(x, @anagrams)
                result_array << x
            end
        end
        return result_array
    end

end
