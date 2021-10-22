require 'json'

def lambda_handler(event:, context:)
    n_str = event.dig('queryStringParameters', 'n') || "0"
    n = n_str.to_i
    result = triangle(n)
    {
      statusCode: 200,
      body: JSON.generate({
        message: "OK",
        result: result
      })
    }
end

def triangle(n)
  if n == 0
    [1]
  else
    before = triangle(n - 1)
    result = []
    (0..(before.size - 2)).each do |i|
      result << before[i] + before[i + 1]
    end
    [1] + result + [1]
  end
end
