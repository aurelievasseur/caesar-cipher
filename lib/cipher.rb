require 'pry'

def caesar_cipher(string, shift_factor)
    ascii_trans = string.chars.map do 
        |letter| 
        a = letter.ord
        if a.between?(65, 90)|| a.between?(97,122)
            b =  a + shift_factor
            if a < 90 && b > 90 || a < 122 && b > 122
                b -= 26
            else
                b = b 
            end
        else 
            b = a
        end
    end
    ascii_trans.map{|char| char.chr}.join('')

end

caesar_cipher("Testing CiPhEr out", 4)