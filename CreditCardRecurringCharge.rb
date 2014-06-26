require "net/http"
require "uri"

uri = URI.parse("https://webservice.paymentxp.com/wh/webhost.aspx?MerchantID=10012&MerchantKey=c22a63ee-2e7a-4ace-96ac-0958dc8d953f&CardNumber=4111111111111111&DayOfMonthOption=15&MonthlyOption=1&OccurenceOption=2&WeekOption=0&WeekdayOption=0&StartDate=08152014&MonthOfYearOption=1&ExpirationDateMMYY=1218&TransactionAmount=1.00&TransactionType=CreditCardRecurringCharge")

# Shortcut
response = Net::HTTP.get_response(uri)

# Will print response.body
Net::HTTP.get_print(uri)

# Full
http = Net::HTTP.new(uri.host, uri.port)
response = http.request(Net::HTTP::Get.new(uri.request_uri))
