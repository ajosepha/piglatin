require 'ap'
require "debugger"

  def consonant(phrase)
        phrase1 = phrase.split(//)
        start_sounds = []
        phrase1.each do |letter|
            until letter == (/[aeiouy]/).match
                stat_sounds << letter
            end
        end
        ap start_sounds
        #while the first letters are consonants
        #gather them 
        #then move them to the back
        #then unsplit the word
        #split the word into an array of its letters
        #take the first consonants and move them to the end

    end
consonant("this")