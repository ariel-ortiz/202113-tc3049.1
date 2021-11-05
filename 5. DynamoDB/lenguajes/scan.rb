require 'aws-sdk-dynamodb'

dynamodb = Aws::DynamoDB::Client.new
response = dynamodb.scan(table_name: 'lenguajes')
items = response.items
p items
p (items.dig(3, 'fecha') || 0).to_i