require 'json'

def lambda_handler(event:, context:)
  source_ip = event.dig("requestContext", "identity", "sourceIp") || "Other!"
  {
    statusCode: 200,
    body: JSON.generate({
      metodo: event['httpMethod'],
      ruta: event['path'],
      parametros: event['queryStringParameters'],
      encabezados: event['headers'],
      cuerpo: event['body'],
      memoria: context.memory_limit_in_mb,
      evento: event,
      source_ip: source_ip
    })
  }
end
