class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @letters1 = @word1.downcase.gsub(/[^a-z0-9]/,'').split('').sort
    @letters2 = @word2.downcase.gsub(/[^a-z0-9]/,'').split('').sort
  end
  
  def anagram_checker
    if @letters1 == @letters2
      if (@word1.downcase.count 'aeiouy').to_s != '0' && is_triple_letter(@word1) && is_triple_letter(@word2)
        if (@word1.count ' ').to_s == '0'
          return "These words are anagrams."
        else
          return "These sentences are anagrams."
        end
      else
        return "You need to input actual words!"
      end
    else
      if (@word1.downcase.count @word2.downcase).to_s == '0'
        return "These words have no letter matches and are antigrams."
      else
        return "These words are not anagrams."
      end
    end
    false
  end

  def is_triple_letter(sentence)
    last = ''
    second = ''
    sentence = sentence.downcase.gsub(/[^a-z0-9]/,'').split(' ')
    sentence.each do |word|
      letters = word.split('')
      letters.each do |letter|
        if letter == last && letter == second
          return false
        end
        second = last
        last = letter
      end
    end
  end
end