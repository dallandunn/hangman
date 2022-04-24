def secret_word()
    file = File.readlines('google-10000-english-no-swears.txt')
    dictionary = Array.new()
    file.each do |word|
        trimed_word = word.delete("\n")
        if trimed_word.length > 4 && trimed_word.length < 13
            dictionary.push(trimed_word)
        end
    end

    secret_word = dictionary.sample
    secret_word
end

def get_letter()
    letter = ""
    while not letter.match?(/[[:alpha:]]/) && letter.length == 1
        print "Guess a letter: "
        letter = gets.chomp
    end
    letter.downcase
end