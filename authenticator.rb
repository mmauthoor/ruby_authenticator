users = [
  { username: "moya", password: "password1"},
  { username: "jack", password: "hello"}
]

def auth_user(username, password, users_list)
    valid_user = users_list.find {|element| element[:username] == username and element[:password] == password}
    valid_user ? valid_user : "Credentials were not correct"
end

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

  authentication = auth_user(user_name, user_pword, users)
  puts authentication

  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4