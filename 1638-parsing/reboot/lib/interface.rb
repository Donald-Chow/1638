require_relative "scraper"
require_relative "views"
require_relative "helpers"
require_relative "csv"

#############################################
#############Begining of the app#############
#############################################

# Welcome the user
puts "Welcome to your Christmas gift list"
puts "🎄===========🎁🎁🎁=============🎅"

# defining required variables
list = {}
load_csv(list)
action = ''

# Main loop
until action == "quit"
  # ask for user action
  puts ''
  puts "Which action [list|add|mark|idea|delete|quit]?"
  print ">"
  action = gets.chomp

  # execute action
  case action
  when "list"
    # TODO: list items
    # define an hash outside of loop
    # inside of the hash, keys are the item name, and value is marked or not as boolean
    # iterate over the hashwith the index
    # puts the item name to show the user
    display_list(list)

  when "add"
    # TODO: add item
    # ask the user what he wants to add to the list
    # store the user's input
    # add a hash element using the user's input into the hash
    # puts "What do you like to add"
    # print ">"
    # item_name = gets.chomp

    item_name = ask_user(action)
    list[item_name] = false
    save_csv(list)

    puts "*#{item_name}* has been added to your Christmas List"

  when "delete"
    # TODO: delete item
    # ask the user what he wants to delete
    # store user input (index)
    # # find element from the hash
    # # array of strings, those strings are the keys

    # puts "What do you like to delete"
    # print ">"
    # user_input = gets.chomp
    # index = user_input.to_i - 1
    # list_array = list.keys
    # item_name = list_array[index]

    display_list(list)
    user_input  = ask_user(action)
    item_name = find_name_from_index(list, user_input)
    # delete the element from the hash
    list.delete(item_name)
    save_csv(list)


    puts "*#{item_name}* has been deleted to your Christmas List"

  when "mark"
    # TODO: MARK
    # add the mark action (add to the menu, as an action)
    # ask the user which one to mark?
    # store user input (index)
    # find element from the hash

    # puts "What do you want to mark?"
    # user_input = gets.chomp
    # index = user_input.to_i - 1
    # list_array = list.keys
    # item_name = list_array[index]

    display_list(list)
    user_input = ask_user(action)
    item_name = find_name_from_index(list, user_input)
    # change the value of that element to true
    list[item_name] = true
    save_csv(list)


    puts "*#{item_name}* has been marked to your Christmas List"

  when "idea"
    # TODO: idea
    # ask the user
    # store the user input
    # give this input to the scraper
    # scraper should search the web
    # find the titles
    # show it to the user
    # ask the user which item he/she wants to add (INDEX)
    # we need an item (string, name of the item)
    # add it to our christmas list
    # puts "What do you want to add?"
    # user_input = gets.chomp
    # index = user_input.to_i - 1
    # results_keys = results.keys
    # item_name = results_keys[index]

    user_input = ask_user("search for")
    results = scraper(user_input)
    display_list(results)
    user_input = ask_user("add")
    item_name = find_name_from_index(results, user_input)
    # add it to the list
    list[item_name] = false
    save_csv(list)


    puts "*#{item_name}* has been added to your Christmas List"

  when "quit"
    puts "Bye, have a good time"

  end
end
