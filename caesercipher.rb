#This project was created for The Odin Project.

def caesar_cipher(string, shift)

    alphabet = 'abcdefghijklmnopqrstuvwxyz'

    #determins if shift is higher than 26 letters, if so returns remainder
    if shift > 26 then shift = shift % 26 end

# splits sentence into workable array for iteration
    sentence = string.split(//)
    p sentence

#cipher sequence
    for char in sentence
        if char.match(/[a-zA-Z]/)
            shifted_value = (alphabet.index(char.downcase).to_i) + shift
            p shifted_value
            if shifted_value >= 26 then shifted_value = shifted_value % 26 end
            if char == char.upcase
                char.replace (alphabet[shifted_value].upcase)
                p char
            else
                char.replace (alphabet[shifted_value])
                p char
            end
        end
    end
    
    p sentence.join
end

caesar_cipher("Another test", -10)
