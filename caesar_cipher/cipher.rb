require 'colorize'
require 'pry-byebug'
# 1.take user input (plain text) for string and key that will shift that string
# 2.convert string into array AND ascii values
#   a.Symbols and punctuaction shouldn't change
#   b.Letters stay capitalized
# 3.shift array by key (add key value to each index in array)
# 4.convert array back to characters
# 5.join array 
# 6.return the string/ cipher text

def caesar_shift(string, key)
    if key < 1 || key > 26
        puts "Key must be between 1 and 26!".red
        puts "What is your key?".yellow
        key = gets.chomp.to_i
        caesar_shift(string, key)
    else
        ascii_array = string.bytes
        shifted_array = ascii_array.map do |number|
            if number.between?(65, 90)
                #This will make sure you have wrapping from A - Z
                number + key > 90 ? (number + key) - 26 : number + key
            elsif number.between?(97, 122)
                #This will make sure you have wrapping from a - z
                number + key > 122 ? (number + key) - 26 : number + key
            else
                #If plain text character is symbol, punctuation, or space
                #it remains unchanged
                number
            end
        end
    puts ciphered_array = shifted_array.pack("c*").blue
    end
end

puts "What would is your plaintext?".red
string = gets.chomp

puts "What is your key?".blue
key = gets.chomp.to_i

caesar_shift(string, key)


    
        
    
