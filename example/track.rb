#coding : utf-8
#Test program(Tweetlib::Client#track_stream)

require '.././tweetlib.rb'
require 'json'

keys = JSON.parse(File.read(".././keys.json"))

client = Tweetlib::Client.new(keys.values)

print "Please input track word : "
track_word = STDIN.gets.to_s.encode!("utf-8").chomp!

client.track_stream(track_word) do |status_hash|
	status_json = JSON.generate(status_hash)
	status = JSON.parse(status_json)

	puts "#{status["user"]["screen_name"]} : #{status["text"]}" if status["text"]
end