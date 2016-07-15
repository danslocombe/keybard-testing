var express = require('express');
var app = express();
var exec = require('child_process').exec;

app.set('port', (process.env.PORT || 5000));

app.use(express.static(__dirname + '/public'));

// views is directory for all template files
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

app.get('/', function(request, response) {
  response.render('pages/index');
});

app.get('/securitythroughobscurity248', function(request, response) {
  var cmd = 'bash deploy.sh';
  exec(cmd, function(error, stdout, stderr){
  });
  console.log('Got Webhook');
});

app.listen(app.get('port'), function() {
  console.log('Node app is running on port', app.get('port'));
});

