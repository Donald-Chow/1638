############# helper method #############
def find_name_from_index(list, user_input)
  # store user input (index)
  index = user_input.to_i - 1

  # find element from the hash
  list_array = list.keys
  list_array[index]
end
