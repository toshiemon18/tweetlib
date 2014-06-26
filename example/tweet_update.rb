#encoding : utf-8
#Test program(Tweetlib::Client#update(tweet mode))

require '.././tweetlib.rb'
require 'json'

keys = JSON.parse(File.read(".././keys.json"))

lib = Tweetlib::Client.new(keys.values)

while 1
	print "Please input tweet body : "
	str = STDIN.gets.to_s.chomp.encode!("utf-8")

	puts "Sending..."
	lib.update(str)
	puts "Completed update tweet!"
end