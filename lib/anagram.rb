class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @letters1 = @word1.downcase.split('').sort
    @letters2 = @word2.downcase.split('').sort
  end
  
  def anagram_checker
    if @letters1 == @letters2
      if (@word1.downcase.count 'aeiouy').to_s != '0'
        return "These words are anagrams."
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
end