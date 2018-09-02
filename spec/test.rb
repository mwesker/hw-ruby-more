require 'fun_with_strings'
require 'byebug'

describe 'anagram grouping' do
  describe 'sanity checks' do
    it 'should work on the empty string' do
      expect(''.anagram_groups).to eq([])
    end
    it 'should return an array of arrays for nonempty string' do
      'x'.anagram_groups.each { |element| expect(element).to be_an Array }
    end
  end
  it 'for "scream cars for four scar creams"' do
    @anagrams =  'scream cars for four scar creams'.anagram_groups
    @anagrams.each { |group| group.sort! }
    [%w(cars scar), %w(four), %w(for), %w(creams scream)].each do |group|
        expect(@anagrams).to include(group)
    end
  end
  end