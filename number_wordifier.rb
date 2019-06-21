class NumberWordifier
  require './lib/dictionary.rb'

  def convert number
    start_time = Time.now
    number = number.tr('^2-9', '') #Removes alphabets and 0,1
    if valid_number?(number)
      all_matching_words_from_dictionary = word_combinations(number)
      one_word_possibilities = all_matching_words_from_dictionary.select{|ele| ele.length == 10}
      multiple_word_possibilities = combine_words(all_matching_words_from_dictionary)
      word_combinations = one_word_possibilities + multiple_word_possibilities
      p "Time taken : #{Time.now - start_time}"
      word_combinations
    else
      p "Invalid Number"
    end
  end

  private

  def dictionary
    Dictionary.new
  end

  def valid_number? number
    number.length == 10
  end

  def word_combinations number
    # Select words from dictionary matching with the given number
    dictionary.dictionary_words.select{ |word| number.include? dictionary.numerize(word)}
  end

  def combine_words matching_words
    # Construct 10 letter word combination from the words matching/filtered.
    combination_array = (2..3).flat_map{|n| matching_words.combination(n).to_a} # Max 3 words can be combined for an 10 digit number
    combination_array = combination_array.select{|arr| arr.join.length == 10} # select combinations with length 10
    combination_array.map{|ele| ele.join(',')} #join to form a single

  end
end
wordify = NumberWordifier.new
wordify.convert(ARGV.first)
