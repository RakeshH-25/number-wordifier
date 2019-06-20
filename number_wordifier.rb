class NumberWordifier

  def convert number
    number = number.tr('^2-9', '') #Removes alphabets and 0,1
    if valid_number?(number)
      p "Valid Number"
    else
      p "invalid Number"
    end
  end

  private

  def valid_number? number
    number.length != 10
  end
end
wordify = NumberWordifier.new
wordify.convert(ARGV.first)
