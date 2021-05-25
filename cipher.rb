require 'pry'

def caesar_cipher(string, shift_factor)
    ascii_trans = string.chars.map do 
        |letter| 
        if letter != " "
            b =  letter.ord + shift_factor
            if (letter.ord.between?(65, 90) && b > 90) || (letter.ord.between?(97,122) && b > 122)
                b -= 26
            else
                b = b 
            end
        else 
            b = letter.ord
        end
    end
    puts ascii_trans.map{|char| char.chr}.join('')

end

 caesar_cipher("Testing CiPhEr out", 4)