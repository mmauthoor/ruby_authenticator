users = [
  { username: "moya", password: "password1"}
]
puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  user_name = gets.chomp
  print "Password: "
  user_pword = gets.chomp
  valid_user = users.find {|element| element[:username] == user_name and element[:password] == user_pword}
  print valid_user if valid_user
  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
  
  attempts += 1
end