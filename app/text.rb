require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# put your own credentials here it is for testing
#account_sid = 'AC44067e790a08239d79858f21130d9f4d'
#auth_token = 'a38c1cbbc21058f00a6a5e60a7171ace'

#real account_sid and auth_token
account_sid='AC00c193bb58f4ddb5ce0a5d8c5af233ab'
auth_token='859e48f6632925cbbfb37c8dc2d6c0b6'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

# alternatively, you can preconfigure the client like so
#Twilio.configure do |config|
  #config.account_sid = account_sid
  #config.auth_token = auth_token
#end

# and then you can create a new client without parameters
#@client = Twilio::REST::Client.new

message = @client.messages.create(
  #from: '+15005550006',
  from: '+14014008665',
  to: '+27715773793',
  body: 'Hey there!'
)

puts "Message id #{message.sid} sucess" 