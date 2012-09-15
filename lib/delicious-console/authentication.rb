module Delicious
	module API
		module Authentication	
			class << self
				def authenticate(request, connection)
					if !request.nil?
						make_setup!
						request.basic_auth @username, @password
						response = connection.request(request)
					else
						puts "Invalid request"
					end
				end
			
				def make_setup!
					config = YAML.load_file(filename)
					@username = config['username']
					@password = config['password']
				end
			
				def filename
					File.expand_path("~/.delicious_config")
				end
			end
		end
	end
end
	