class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def anagram_checker
    if @word1.downcase.split('').sort == @word2.downcase.split('').sort && (@word1.downcase.count 'aeiouy').to_s != '0'
      return true
    end
    false
  end
end