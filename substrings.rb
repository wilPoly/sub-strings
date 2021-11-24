require "pry-byebug"

def substrings(string, dictionary)
  string.split(" ").reduce(Hash.new(0)) do |count, word|
    # binding.pry
    dictionary.each { |ref| count[ref] += 1 if word.downcase[ref] }
    count
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)