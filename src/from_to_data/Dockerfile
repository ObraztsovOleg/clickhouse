FROM tarantool/tarantool:latest

COPY from_to_data.lua /home/tarantool/from_to_data.lua
RUN chmod a+x /home/tarantool/from_to_data.lua
WORKDIR /home/tarantool/data

CMD [ "/home/tarantool/from_to_data.lua" ] 