#coding : utf-8
#Test program(Tweetlib::Client#userstream)

require '.././tweetlib.rb'
require 'json'

keys = JSON.parse(File.read(".././keys.json"))
obj = File.open("json.txt", "w+:utf-8")

lib = Tweetlib::Client.new(keys.values)

lib.userstream do |status|
	#user stream test
	if status["text"] && status["user"]["screen_name"] == "toshiemon18"
		#tags = []
		#tags = status["entities"]["hashtags"]
		#puts tags
		#obj.puts(tags)#("#{status["user"]["screen_name"]} : #{status["text"]}")
		#status["entities"]["hashtags"].each do |tags|
			#if tags["text"] then
				#puts tags["text"].slice(tags["indices"][0], tags["indices"][1])
				#puts tags["text"]
			#end
		#end
		puts "#{status["user"]["name"]}(#{status["user"]["screen_name"]}) : #{status["text"]}"
		#puts "#{status["text"]} : #{status["id_str"]}"
		#obj.close
		#exit
	end

	#reply test
	#if status["text"] && status["user"]["screen_name"] == "toshiemon18" then
		#lib.update("@" +status["user"]["screen_name"] + "てすとりぷらい！", status["id_str"])
	#end
end