require 'aws-sdk-dynamodb'

dynamodb = Aws::DynamoDB::Client.new

new_item = {
  nombre: 'Java',
  autor: 'James Gosling',
  fecha: 1995,
  color: 'azul'
}

dynamodb.put_item(table_name: 'lenguajes', item: new_item)

puts 'Item has been put!'
