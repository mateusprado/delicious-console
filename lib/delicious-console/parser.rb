module Delicious
	module API
		module Parser
			class << self
				def response(body)
					dom = REXML::Document.new(body)
					posts = {}
					dom.root.elements.collect('post') do |result|
						all_posts = result.attributes['href']
					end
				end
			end
		end
	end
end