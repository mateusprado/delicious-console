module Delicious
	module API
		module Client
			class << self
				def posts_all
					request = nil
					connection = Net::HTTP.new('api.del.icio.us', 443)
					connection.use_ssl = true
					connection.start do |connection|
						request = Net::HTTP::Get.new('/v1/posts/all')
					end
					return request, connection
				end
			
			
				def post_add(url, description)
					request = nil
					connection = Net::HTTP.new('api.del.icio.us', 443)
					connection.use_ssl = true
					connection.start do |connection|
						request = Net::HTTP::Get.new("/v1/posts/add?url=#{url}&description=#{description}")
					end
					return request, connection
				end
			end
		end
	end
end