require './number_wordifier.rb'

RSpec.describe NumberWordifier, type: :model do
  before :each do
    @wordify = NumberWordifier.new
  end

  context "With invalid inputs" do
    number1 = "1234567890"
    number2 = "2345"
    alphanumeric = "234asdf324"

    it 'should return "Invalid Number"' do
      expect(@wordify.convert(number1)).to eql("Invalid Number")
    end

    it 'should return "Invalid Number"' do
      expect(@wordify.convert(number2)).to eql("Invalid Number")
    end

    it 'should return "Invalid Number"' do
      expect(@wordify.convert(alphanumeric)).to eql("Invalid Number")
    end
  end

  context "With valid Inputs" do
    number1 = "6686787825"
    number2 = "2282668687"

    it 'should include expected WORDS' do
      response = @wordify.convert(number1)
      expect(response).to include("MOTORTRUCK")
      expect(response).to include("MOTOR,TRUCK")
      expect(response).to include("MOTOR,USUAL")
      expect(response).to include("NOUN,STRUCK")
      expect(response).to include("NOT,OPT,PUCK")
    end

    it 'should include expected WORDS' do
      response = @wordify.convert(number2)
      expect(response).to include("CATAMOUNTS")
      expect(response).to include("ACTA,MOUNTS")
      expect(response).to include("ACT,AMOUNTS")
      expect(response).to include("ACT,CONTOUR")
      expect(response).to include("CAT,BOOT,OUR")
    end
  end
end