// Download the Node helper library from twilio.com/docs/node/install
// These vars are your accountSid and authToken from twilio.com/user/account
var accountSid = '{{ account_sid }}';
var authToken = "{{ auth_token }}";
var client = require('twilio')(accountSid, authToken);

client.accounts.create({
    friendlyName: "Submarine"
}, function(err, account) {
    process.stdout.write(account.sid);
});