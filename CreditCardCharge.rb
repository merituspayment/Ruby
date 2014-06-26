require "net/http"
require "uri"

uri = URI.parse("https://webservice.paymentxp.com/wh/webhost.aspx?MerchantID=10012&MerchantKey=c22a63ee-2e7a-4ace-96ac-0958dc8d953f&CardNumber=4111111111111111&ExpirationDateMMYY=1217&TransactionAmount=1.00&TransactionType=CreditCardCharge&BillingNameFirst=John&BillingNameLast=Doe")

# Shortcut
response = Net::HTTP.get_response(uri)

# Will print response.body
Net::HTTP.get_print(uri)

# Full
http = Net::HTTP.new(uri.host, uri.port)
response = http.request(Net::HTTP::Get.new(uri.request_uri))
