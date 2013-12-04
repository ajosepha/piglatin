class PigLatin

    attr_accessor :phrase

    def initialize
        @phrase = phrase
    end

    # def play_game
    # end

    def split(phrase)
        phrase.split(//)
    end

     def consonant(phrase)
        split(phrase)
        phrase.each do |letter|
            
        end
        #while the first letters are consonants
        #gather them 
        #then move them to the back
        #then unsplit the word
        #split the word into an array of its letters
        #take the first consonants and move them to the end

     end

    def add_ay(phrase)
        "#{phrase}ay"
    end

end