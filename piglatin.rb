class PigLatin

    attr_accessor :phrase

    def initialize
        @phrase = phrase
    end

    def split(phrase)
        phrase.split(//)
    end


    def consonant(phrase)
        vowel = phrase.split(/([aeiouy])/)
        syl = vowel.shift
        vowel.push(syl)
        @phrase = vowel.join
    end


    def add_ay(phrase)
        "#{phrase}ay"
    end

    def add_way(phrase)
        "#{phrase}way"
    end

    def play_game(phrase)
        if phrase[0]=~/[^aeiouy]/ 
            add_ay(consonant(phrase))
        else
            add_way(phrase)
        end
    end

end