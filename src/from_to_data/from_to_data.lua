#!/usr/bin/env tarantool

local http_client = require('http.client')

box.cfg{listen = 3301,  log_level = 5, read_only = false, force_recovery = true }
local space_s = box.space.user_tick

local function insert_processing()   
    for k, v in pairs(r) do
        print(v)
    end
    for _, v in space_s:pairs(nil, {iterator = box.index.ALL}) do
        local day  = tonumber(v[1])
        local tick = tonumber(v[2])
        local speed = tonumber(v[3])

        local query = 'INSERT%20INTO%20tick_speed%20VALUES%20('..day..','..tick..','..speed..')'
        local r = http_client.post('http://clickhouse:8123/?query='..query)
    end
end

insert_processing()
os.exit(true, true)
