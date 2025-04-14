require 'calculator'

RSpec.describe Calculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(Calculator.add("")).to eq(0)
    end
  end
end

RSpec.describe Calculator do
  it "return itself if we pass a single number as arguement" do
    expect(Calculator.add('8')).to eq(8)
  end
end

RSpec.describe Calculator do
  it "returns the sum of two values seperated by ',' " do
    expect(Calculator.add("5,3")).to eq(8)
  end
end

RSpec.describe Calculator do
  it "return the sum of values and with handling the newline" do
    expect(Calculator.add("5\n2,1")).to eq(8)
  end
end

RSpec.describe Calculator do
    it "return the sum of values in the string with the custom delimiters" do
      expect(Calculator.add("//;\n1;2")).to eq(3)
    end
end

RSpec.describe Calculator do
    it "raises an exception when a negative number is passed" do
      expect { Calculator.add("1,-2") }
        .to raise_error("negatives not allowed: -2")
    end
end
