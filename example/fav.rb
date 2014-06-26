#encoding : utf-8
#Test program(Tweetlib::Client#favorite/unfavorite)
#send to reply for your acount

require '.././tweetlib.rb'
require 'json'

print "Please input your screen name : "
YOURSCREEN_NAME = STDIN.gets.to_s.chomp

keys = JSON.parse(File.read(".././keys.json"))

lib = Tweetlib::Cient.new(keys.values)

lib.userstream do |status_hash|
	status_json = JSON.generate(status_hash)
	status = JSON.parse(status_json)

	#if status["text"]
		#obj.puts(status_hash)#("#{status["user"]["screen_name"]} : #{status["text"]}")
		#puts "#{status["user"]["screen_name"]} : #{status["text"]}"
	#end

	if status["text"] && status["user"]["screen_name"] == YOUR_SCREEN_NAME then
		#favorite
		p lib.favorite(status["id_str"]) #display HTTP status
		#unfavorite
		p lib.unfavorite(status["id_str"]) #display HTTP status
	end
end