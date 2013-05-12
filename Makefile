
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile
	$(MAKE) -f objs/Makefile manpage

install:
	$(MAKE) -f objs/Makefile install

upgrade:
	/home/minglin/workspace/nginx-1.4.1/dist/sbin/nginx -t

	kill -USR2 `cat /home/minglin/workspace/nginx-1.4.1/dist/logs/nginx.pid`
	sleep 1
	test -f /home/minglin/workspace/nginx-1.4.1/dist/logs/nginx.pid.oldbin

	kill -QUIT `cat /home/minglin/workspace/nginx-1.4.1/dist/logs/nginx.pid.oldbin`
