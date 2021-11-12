RSpec.describe 'bitwise_ops' do
  {
    [6, 23] => 6,
    [7, 12] => 4,
  }.each do |pair, expected_value|
    it "bitwise ands #{pair.inspect} to be #{expected_value}" do
      expect(bitwise_and(pair[0], pair[1])).to eq(expected_value)
    end
  end

  {
    [6, 23] => 23,
    [7, 12] => 15,
  }.each do |pair, expected_value|
    it "bitwise ors #{pair.inspect} to be #{expected_value}" do
      expect(bitwise_or(pair[0], pair[1])).to eq(expected_value)
    end
  end

  {
    [6, 23] => 17,
    [7, 12] => 11,
  }.each do |pair, expected_value|
    it "bitwise xors #{pair.inspect} to be #{expected_value}" do
      expect(bitwise_xor(pair[0], pair[1])).to eq(expected_value)
    end
  end
end
