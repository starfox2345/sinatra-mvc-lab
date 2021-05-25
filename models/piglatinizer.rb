require 'pry'
class PigLatinizer


    def piglatinize(str)
        str.split(" ").map do |word|
            vowel = "aeiouAEIOU"
            if vowel.include?(word[0])
                word << "way"
            else
                new_vowel = word.split("").detect do |letter| 
                    vowel.include?(letter)
                end
                vowel_index = word.index(new_vowel)
                const = word.slice(0...vowel_index)
                leftovers = word.slice(vowel_index..)
                leftovers + const + "ay"
                # binding.pry
            end
        end.join(" ")
    end
end

# x = PigLatinizer.new
# x.piglatinize("eye")

# if the word is a vowel expect to just add way to the end of the word
# if word begins with a consonant, then I want to grab the letters up to the first
# available vowel move those letters to the end of my word and add ay
# a single word OR a full sentence.