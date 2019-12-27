FROM nginx
EXPOSE 80
COPY file.json /gitRep/h/file.json
COPY back.conf /etc/nginx/conf.d/default.conf

RUN nginx -t
RUN service nginx stop
RUN service nginx start
