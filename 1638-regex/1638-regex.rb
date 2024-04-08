# p /sdf/.class
# p "string".class

# .match?
#  t/f

# p "donald@gmail.com".match?(/\w+@\w+.\w{2,3}/)

# =~

# p "This is a text" =~ /\bis\b/

# name = "Donald Chow"

# pattern = /^(?<first_name>[a-z]+) (?<last_name>[a-z]+)$/i

# p name.match?(pattern)
# p pattern.match?(name)
# if name.match?(pattern)
#   # .match
#   match_data = name.match(pattern)
#   p match_data
#   p "First name: #{match_data[:first_name]}"
#   p "Last name: #{match_data["last_name"]}"
# else
#   p "#{name} is not a valid name"
# end

# .scan

# names = "
# 1. John Lennon
# 2. Paul McCartney
# 3. George Harrison
# 4. Ringo Starr
# "

# # pattern = /([a-z].*)$/i
# pattern = /([a-z]+) ([a-z]+)$/i

# beetles = names.scan(pattern)

# p beetles.flatten

# gsub

# p "don't you dare".gsub(" ", "_")
# p "don't you dare".gsub(/\s/, "_")
# p "don't you dare".gsub(/(\b.*\b) (\b.*\b) (\b.*\b)/, '\2 \1 \3')
