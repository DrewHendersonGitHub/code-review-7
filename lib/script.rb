#!usr/bin/env ruby
require('./lib/anagram.rb')

puts "Enter two words, or type 'quit' to exit"
word1 = gets.chomp

while (word1!='quit')
  word2 = gets.chomp
  obj = Anagram.new(word1, word2)
  puts obj.anagram_checker
  puts "Enter two more words, or type 'quit' to exit"
  word1 = gets.chomp
end
puts "Goodbye"

#obj = Anagram.new(ARGV[0], ARGV[1])
#puts obj.anagram_checker