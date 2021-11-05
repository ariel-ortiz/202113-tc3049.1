require "json"
require "faraday"

URL = 'API endpoint URL goes here'

=begin

data = {
  Author: "Suzanne Collins",
  Title: "Catching Fire",
  Year: 2009
}

res = Faraday.post(URL, JSON.dump(data))

if res.success?
  puts "Status: #{res.status}. Resource created!"
end

=end

res = Faraday.get(URL)

if res.success?
  data = JSON.parse(res.body)
  p data
end
