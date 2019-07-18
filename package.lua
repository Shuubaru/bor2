--[[return {
  name = "heroku-luvit/luvit-example",
  version = "1.0.0",
  description = "Example luvit app for heroku",
  dependencies = {
    "luvit/luvit"
  },
}]]--

return {
  name = "heroku-luvit/luvit-example",
  version = "1.0.0",
  homepage = 'https://github.com/SinisterRectus/Discordia',
  description = "Example luvit app for heroku",
  dependencies = {
    "luvit/luvit",
		'creationix/coro-http@3.1.0',
		'creationix/coro-websocket@3.1.0',
		'luvit/secure-socket@1.2.2',
  },
	tags = {'discord', 'api'},
	license = 'MIT',
	author = 'Sinister Rectus',
	files = {'**.lua'},
}
