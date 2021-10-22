require "json"
require "faraday"

URL = 'https://nq2w0rqlcj.execute-api.us-west-2.amazonaws.com/default/pascal_triangle'

connection = Faraday.new(url: URL)
res = connection.get do |req|
  req.params['n'] = 5
end

if res.success?
  data = JSON.parse(res.body)
  p data['result']
end