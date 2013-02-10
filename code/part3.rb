def combine_anagrams(words)
  hsh = Hash.new()
  words.each do |wrd|
    key = wrd.downcase.chars.sort.join
    if hsh.has_key?(key)
      hsh.store(key, hsh[key]+[wrd])
    else
      hsh.store(key,[wrd])
    end
    end
  hsh.values 
end

l1 = ['cars','for','potatoes','racs','four','scar','creams','scream']

puts combine_anagrams(l1).to_s
