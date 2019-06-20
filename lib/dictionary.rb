class Dictionary
  NUMBER = {}

  ['A', 'B', 'C'].each do |alpha|
    NUMBER[alpha.to_sym] = '2'
  end
  ['D', 'E', 'F'].each do |alpha|
    NUMBER[alpha.to_sym] = '3'
  end
  ['G', 'H', 'I'].each do |alpha|
    NUMBER[alpha.to_sym] = '4'
  end
  ['J', 'K', 'L'].each do |alpha|
    NUMBER[alpha.to_sym] = '5'
  end
  ['M', 'N', 'O'].each do |alpha|
    NUMBER[alpha.to_sym] = '6'
  end
  ['P', 'Q', 'R', 'S'].each do |alpha|
    NUMBER[alpha.to_sym] = '7'
  end
  ['T', 'U', 'V'].each do |alpha|
    NUMBER[alpha.to_sym] = '8'
  end
  ['W', 'X', 'Y', 'Z'].each do |alpha|
    NUMBER[alpha.to_sym] = '9'
  end

  def dictionary_words
    file = __dir__ + "/dictionary.txt"
    words = []

    File.open(file, "r") do |f|
      f.each_line do |line|
        word = line.split.map(&:to_s).first
        words.push(word) if (word.length.between?(3,10))#word length greater than 10 and shorter than 3 not required.
      end
    end
    words.flatten.compact
  end

  #numberical form of the fiven number
  def numerize word
    numberized_array = word.split('').map{|alpha| NUMBER[alpha.to_sym]}
    numberized_array.join(',').gsub(',', '')
  end
end