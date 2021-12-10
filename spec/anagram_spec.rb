require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it("checks if two words are anagrams") do
    obj = Anagram.new("words", "sword")
    expect(obj.anagram_checker).to(eq("These words are anagrams."))
  end
  it("checks if two words with different cases are anagrams") do
    obj = Anagram.new("Words", "Sword")
    expect(obj.anagram_checker).to(eq("These words are anagrams."))
  end
  it("checks if two words both contain vowels") do
    obj = Anagram.new("Wrds", "Swrd")
    expect(obj.anagram_checker).to(eq("You need to input actual words!"))
  end
  it("checks if the two words are antigrams") do
    obj = Anagram.new("Banana", "Shoe")
    expect(obj.anagram_checker).to(eq("These words have no letter matches and are antigrams."))
  end
  it("checks if two sentences are anagrams or antigrams") do
    obj = Anagram.new("The Morse Code", "Here come dots!")
    expect(obj.anagram_checker).to(eq("These sentences are anagrams."))
  end
end