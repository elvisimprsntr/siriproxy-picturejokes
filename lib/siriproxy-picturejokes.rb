require 'socket'
require 'yaml'
require 'siri_objects'

class SiriProxy::Plugin::PictureJokes < SiriProxy::Plugin

def initialize(config)
	@webip = "http://" + UDPSocket.open {|s| s.connect("255.255.255.0", 1); s.addr.last}
end

######## Jokes

  begin
  	@@jokes = YAML.load(File.read(File.expand_path(File.dirname( __FILE__ ) + "/picturejokes.yml")))
  rescue
  	puts "Error reading picturejokes.yml file."
  end
  
######## Commands/Actions  
  
  @@jokes.each_key do |title|
	listen_for(/ #{@@jokes[title]["listen"].downcase.strip} /i) do 
		say @@jokes[title]["resp"]
		push_image(title, @@jokes[title]["image"])
		if @@jokes[title].has_key?("question")
			response = ask @@jokes[title]["question"]
			if (response =~ /yes|yep|yeah|ok/i)
				say @@jokes[title]["yesresp"]
			else
				say @@jokes[title]["noresp"]
			end
		end
	request_completed
	end
  end
  
  def push_image(title, image)
	object = SiriAddViews.new
	object.make_root(last_ref_id)
	answer = SiriAnswer.new(title, [SiriAnswerLine.new('logo', @webip + "/" + image)])
	object.views << SiriAnswerSnippet.new([answer])
	send_object object
  end		

end
