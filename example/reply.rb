#encodnig : utf-8
#Test program(Tweetlib::Client#update(reply mode))

require '.././tweetlib.rb'
require 'json'

keys = JSON.parse(File.read(".././keys.json"))

lib = Tweetlib::Client.new(keys.values)

print "Please input reply body : "
str = STDIN.gets.to_s.chomp
print "Please input screen name : "
screen_name = STDIN.gets.to_s.chomp

text = '@' + screen_name + ' ' + str

puts "Sending..."
p lib.update(text, 448838128552247298)
#his ID is https://twitter.com/toshiemon18/status/448838128552247298
puts "Completed update your reply!"