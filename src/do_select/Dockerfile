FROM tarantool/tarantool:latest

COPY do_select.lua /home/tarantool/do_select.lua
RUN chmod a+x /home/tarantool/do_select.lua
WORKDIR /home/tarantool/data

CMD [ "/home/tarantool/do_select.lua" ] 