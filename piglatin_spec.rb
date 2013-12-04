require 'rspec'
require './piglatin.rb'

describe PigLatin, "#add_ay" do

    it "should add an ay to the phrase" do
        expect(PigLatin.new.add_ay("bob")).to eq("bobay")
    end 
end

describe PigLatin, "#consonant" do

    it "should take off a the first consonant and put it at the end of the word" do
        expect(PigLatin.new.consonant("ben")).to eq("enb")
    end
end

describe PigLatin, "#split" do
    it "should turn the phrase into an array of letters" do
        expect(PigLatin.new.split("ari")).to eq(["a", "r", "i"])
    end
end  

describe PigLatin, "#add_way" do
    it "should add way to the end of a word" do
        expect(PigLatin.new.add_way("egg")).to eq("eggway")
    end
end 

describe PigLatin, "#play_game" do
    it "should have a word that starts with a consonant do the consonant method" do
        expect(PigLatin.new.play_game("pig")).to eq("igpay")
    end

    it "should have a word that starts with a vowel add way" do
        expect(PigLatin.new.play_game("egg")).to eq("eggway")
    end
 end

# # For words that begin with consonant sounds, t
# "duck" → "uckday"
# "glove" → "oveglay"
# For words that begin with vowel sounds or silent letter, "way" is added at the end of the word. Examples are
# "egg" → "eggway"
# "inbox" → "inboxway"
# "eight" → "eightway"
# The letter 'y' can play the role of either consonant or vowel, depending on its location
# "yellow" → "ellowyay"
# "rhythm" → "ythmrhay"
# In some variants, though, just add an "ay" at the end.
# "egg" → "eggay"
# Yet another acceptable variant is to add the ending "yay" to words that begin with a vowel sound.
# "egg" → "eggyay"