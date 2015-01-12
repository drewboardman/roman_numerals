require "spec_helper"

ROMANS = {
  1 => 'I',
  2 => 'II',
  3 => 'III',
  4 => "IV",
  5 => 'V',
  6 => 'VI',
  8 => 'VIII',
  15 => 'XV',
  21 => 'XXI',
  35 => 'XXXV',
  44 => 'XLIV',
  98 => 'XCVIII',
  404 => 'CDIV',
  904 => 'CMIV',
  909 => 'CMIX',
  3200 => 'MMMCC'
}

ROMANS.each do |number, roman|
  describe "#convert" do
    it "returns #{roman} when given #{number}" do
      numeral = Roman.new(number)
      expect(numeral.roman_equivalent).to eq(roman)  
    end
  end
end