module Delicious
	class Console < Thor
		include Thor::Actions
		include API::Authentication
		include API::Parser
		include API::Client
		
		# task: posts
		desc "posts", "Fetch all bookmarks"
		
		def posts
			request, connection = Delicious::API::Client.posts_all
			response = Delicious::API::Authentication.authenticate(request, connection)
			puts Delicious::API::Parser.response(response.body)
		end
		
		#task: add
		desc "add [url, description]", "Add a url with description"
		
		def add(url, description)
			request, connection = Delicious::API::Client.post_add(url, description)
			response = Delicious::API::Authentication.authenticate(request, connection)
			puts response
		end
	end
end
