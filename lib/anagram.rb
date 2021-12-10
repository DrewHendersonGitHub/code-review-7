class Anagram
  def initialize(word1, word2)
    @letters1 = word1.split('').sort
    @letters2 = word2.split('').sort
  end
  def anagram_checker
    if @letters1 == @letters2
      true
    else
      false
    end
  end
end