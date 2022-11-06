require "pry-byebug"
#Goal:
#Implement a method #substrings, that takes a word as the first argument
#and then an array of valid substrings (your dictionary) as the
#second argument


#Pseudocode
#1. Create method that does takes two arguments
# a.Argument One: a word
# b.Argument Two: a dictionary of words
#
#2. Parse the word(s) in the first argument and
#   check if they match any words in the second
#   argument
#     a. If they do, push that word into a hash 
#        where that word is the key and the 
#        amount of times the word has appeared
#        (or any words within the word) has 
#        appeared in the dictionary
#     b. This should be case insensitve
#
#3. Return that hash 


def substrings(string, dictionary)
  #Using result Hash.new(0) instead of result = {}
  #makes the default values 0 instead of nil 
  result = Hash.new(0)
  lowered_text = string.downcase
  
  dictionary.each do |word|
    #scan will search for the set word from dictionary, and then 
    #create an array of instances of that word.
    #using #length after #scan gives us the amount of occurences
    #after that we set result[word] (the key) = to the amount of matches 
    # UNLESS there were not any matches
    matches = lowered_text.scan(word).length
    result[word] = matches unless matches == 0
  end
  puts result
  return result
end

dictionary = %w(below hello chicken something rotten chimichanga taco cat boy girl chicken steak I do not agree pompous tenacity perspicacity)
substrings("Below the rotten cat man, lies the steak my stomach did not agree with.", dictionary)
