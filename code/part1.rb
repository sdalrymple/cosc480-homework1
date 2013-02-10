def palindrome?(str)
  # test if a string is a palindrome
  str.downcase.gsub(/\W/,"") == str.reverse.downcase.gsub(/\W/,"")
end

def count_words(str)
  hash = Hash.new()
  str.downcase.scan(/\b\w+\b/).each do |word|
    if hash.has_key?(word)
      hash.store(word, hash[word]+1)
    else
      hash.store(word,1)
    end
    end
    hash
end


puts (palindrome?("A man, a plan, a canal -- Panama"))
puts (palindrome?("Madam, I'm Adam!"))
puts (palindrome?("Abracadabro"))
puts (count_words("A man, a plan, a canal -- Panama").to_s)
puts (count_words("Doo bee doo bee doo").to_s)
