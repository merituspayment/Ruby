require "net/http"
require "uri"

uri = URI.parse("https://webservice.paymentxp.com/wh/GetToken.aspx?CardNumber=4111111111111111ExpirationDateMMYY=1218&MerchantID=10012")

# Shortcut
response = Net::HTTP.get_response(uri)

# Will print response.body
Net::HTTP.get_print(uri)

# Full
http = Net::HTTP.new(uri.host, uri.port)
response = http.request(Net::HTTP::Get.new(uri.request_uri))
