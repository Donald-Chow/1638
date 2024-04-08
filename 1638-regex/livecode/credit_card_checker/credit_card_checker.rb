def credit_card_checker(credit_card_number)
  # create a pattern
  pattern = /^(\d)(\d{3} ?)(\d{4} ?){3}$/
  match_data = credit_card_number.match(pattern)
  # p match_data
  # compare the credit card to pattern
  if match_data && match_data[1] == '4'
    "This is a valid visa card number"
  elsif match_data && match_data[1] == '5'
    "This is a valid mastercard number"
  else
    "This is a invalid credit card number"
  end
end
