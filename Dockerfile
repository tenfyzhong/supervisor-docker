FROM python:2.7.13
MAINTAINER tenfyzhong "tenfyzhong@qq.com"

RUN pip --no-cache-dir install supervisor==3.3.2
COPY supervisord.conf /etc/supervisord.conf

RUN mkdir -p /usr/local/var/log; \
        mkdir -p /usr/local/var/run

ENTRYPOINT ["supervisord", "-c", "/etc/supervisord.conf"]
