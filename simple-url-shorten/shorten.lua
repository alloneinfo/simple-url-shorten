ngx.header.content_type = 'text/json'

local functions = require('short/functions')
-- local cjson = require('cjson')
local args = ngx.req.get_uri_args()

--local long_url = args['url']
local long_url = ngx.var.args
local short_string = args['short']
local short_url, err = functions.url_create(long_url)
if err then
	functions.show_error(err)
end
--ngx.say('{"status":1,"shorturl":"'..short_url..'"}')

ngx.say('网址:'..long_url..)
ngx.say('短网址:'..short_url)
ngx.say('--------')
ngx.say('ngx.var.args: '..ngx.var.args)
ngx.say('ngx.var.uri:'..ngx.var.uri)
ngx.say('ngx.var.request_uri:'..ngx.var.request_uri)

