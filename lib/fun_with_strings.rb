module FunWithStrings

  def palindrome?
    test_string = self.downcase.gsub(/[^a-z]/,"")
    test_string.reverse.match(test_string) != nil
  end

  def count_words
    hash = Hash.new(0)
    self.downcase.scan(/\w+/) {|m| hash[m] += 1 }
    hash
  end
  
  def anagram_groups
    self.split(' ').group_by {|e| e.downcase.chars.sort.join }.values
  end
  
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end