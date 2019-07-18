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


local discordia = require('discordia')
local cl = discordia.Client()

cl:on('ready', function()
	print('Logged in as '.. cl.user.username)
end)

cl:on('messageCreate', function(message)
	if message.content == '!ping' then
		message.channel:send('Pong!')
	end
end)

cl:run('Bot NjAxMjIzNjg5MDg5OTc0MzE2.XS_LYg.OOjDifoAKjf0fVWm9mVEDqo-hew')
