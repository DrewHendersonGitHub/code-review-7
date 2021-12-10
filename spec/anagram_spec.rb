require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it("returns true if two words are anagrams") do
    obj1 = Anagram.new("words", "sword")
    expect(obj1.anagram_checker).to(eq(true))
  end
end