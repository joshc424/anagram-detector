def are_anagrams(word_one, word_two)
    one_as_array = word_one.split("").sort
    two_as_array = word_two.split("").sort

    if one_as_array == two_as_array
        return true
    else 
        return false
    end
end

# puts are_anagrams('one', 'two') # false
# puts are_anagrams('one', 'neo') # true
# puts are_anagrams('zoo', 'ooz')
# puts are_anagrams('three', 'four')

def match(words)
    key = "one"
    words.each do |x|
        puts are_anagrams(key, x)
    end
end

# match(%w(one neo three five))

def match_anagrams(word, words)
    # do something
    result_array = []
    words.each do |x|
        if are_anagrams(x, word)
            result_array << x
        end
    end
    return result_array
end

puts "First Test"
puts match_anagrams('one', %w(three one neo five)) # [one neo]
puts "Second Test"
puts match_anagrams('one', %w(two three four five)) # []
puts "Third Test"
puts match_anagrams('one', %w(one neo eno oen two)) # [one neo eno oen]
