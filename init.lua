http = require("http")
class = require('class'),
enums = require('enums'),
extensions = require('extensions'),
package = require('./package.lua'),
Client = require('client/Client'),
Clock = require('utils/Clock'),
Color = require('utils/Color'),
Date = require('utils/Date'),
Deque = require('utils/Deque'),
Emitter = require('utils/Emitter'),
Logger = require('utils/Logger'),
Mutex = require('utils/Mutex'),
Permissions = require('utils/Permissions'),
Stopwatch = require('utils/Stopwatch'),
Time = require('utils/Time'),
storage = {},

-- "A web dyno must bind to its assigned $PORT within 60 seconds of startup."
-- see https://devcenter.heroku.com/articles/dynos#web-dynos
local port = process.env["PORT"]

http.createServer(function(req, res)
	local body = "Hello world\n"
	res:setHeader("Content-Type", "text/plain")
	res:setHeader("Content-Length", #body)
	res:finish(body)
end):listen(port)

print("Server listening on port "..port)
