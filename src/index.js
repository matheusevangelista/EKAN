const express = require('express');
const app = express();

const apm = require('elastic-apm-node').start({
  // Override service name from package.json
  // Allowed characters: a-z, A-Z, 0-9, -, _, and space
  serviceName: 'node-app',

  // Use if APM Server requires a token
  secretToken: 'ufbBh}mpKaQbYwd}RsHwsPMS;yTD0Q:u-~lyCAZ99Q(kCz@7oKLvPX_u3W',

  // Set custom APM Server URL (default: http://localhost:8200)
  serverUrl: 'http://apm-server:8200',
});

app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
