############# views template #############
def display_list(list)
  puts "######🎁 Christmas List 🎁######"
  # this list goes here
  list.each_with_index do |(item, marked), index|
    puts "#{index + 1} - [#{marked ? "✅" : "❌"}] #{item}"
  end
  puts "#################################"
end

def ask_user(action)
  puts "what do you want to #{action}"
  print ">"
  gets.chomp
end
