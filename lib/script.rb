#!usr/bin/env ruby
require('./lib/anagram.rb')

puts "Enter Two Words: "
puts "Type 'quit' to exit"
word1 = gets.chomp

while (word1!='quit')
  word2 = gets.chomp
  obj = Anagram.new(word1, word2)
  puts obj.anagram_checker
  puts "Enter 'quit' to exit, or enter two more words: "
  word1 = gets.chomp
end
puts "Goodbye"