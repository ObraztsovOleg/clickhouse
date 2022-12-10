#!/usr/bin/env tarantool

local http_client = require('http.client')

local function select_processing()
    print("start")
    local query = 'SELECT%20*%20FROM%20tick_speed%20ORDER%20BY%20day%20ASC%20OFFSET%2010000'
    local r = http_client.get('http://clickhouse:8123/?query='..query)
    print("end")
end

select_processing()
os.exit(true, true)
