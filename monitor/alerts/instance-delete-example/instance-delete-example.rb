# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = '{{ account_sid }}'
auth_token = '{{ auth_token }}'
@client = Twilio::REST::MonitorClient.new account_sid, auth_token

@alert = @client.alerts.get("NO5a7a84730f529f0a76b3e30c01315d1a")
@alert.delete