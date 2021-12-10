require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it("returns true if two words are anagrams") do
    obj1 = Anagram.new("words", "sword")
    expect(obj1.anagram_checker).to(eq("These words are anagrams."))
  end
  it("returns true if two words with different cases are anagrams") do
    obj1 = Anagram.new("Words", "Sword")
    expect(obj1.anagram_checker).to(eq("These words are anagrams."))
  end
  it("returns true if two words both contain vowels") do
    obj1 = Anagram.new("Wrds", "Swrd")
    expect(obj1.anagram_checker).to(eq("You need to input actual words!"))
  end
  it("returns if the two words are antigrams") do
    obj1 = Anagram.new("Banana", "Shoe")
    expect(obj1.anagram_checker).to(eq("These words have no letter matches and are antigrams."))
  end
end