require_relative "../credit_card_checker"

describe "#credit_card_checker"do
  it "should return 'This is a valid credit card number' when we pass 16 digit number" do
    expect(credit_card_checker("5242424242424242")).to eq("This is a valid mastercard number")
  end

  it "should return 'This is a valid credit card number' when we pass 16 digit number" do
    expect(credit_card_checker("4242424242424242")).to eq("This is a valid visa card number")
  end

  it "should return 'This is a valid credit card number' when we pass 16 digit number with spaces" do
    expect(credit_card_checker("4242 4242 4242 4242")).to eq("This is a valid visa card number")
  end

  it "should return 'This is a invalid credit card number' when we pass 16 digit number with dash" do
    expect(credit_card_checker("4242-4242-4242-4242")).to eq("This is a invalid credit card number")
  end

  it "should return 'This is a invalid credit card number' when we pass 16 letters with spaces" do
    expect(credit_card_checker("abcd efgh ijkl mnop")).to eq("This is a invalid credit card number")
  end

  it "should return 'This is a invalid credit card number' when we pass 17 digit number with spaces" do
    expect(credit_card_checker("4242 4242 4242 4242 5")).to eq("This is a invalid credit card number")
  end

  it "should return 'This is a invalid credit card number' when we pass nothing" do
    expect(credit_card_checker("")).to eq("This is a invalid credit card number")
  end
end

# 42424242424242
# 4242 4242 4242 4242
# invalid
# 4242-4242-4242-4242
# abcd efgh ijkl mnop
# 4242 4242 4242 4242 5
# ""
