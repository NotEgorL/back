FROM nginx:latest
EXPOSE 80
COPY file.json /usr/share/nginx/json/file.json
COPY back.conf /etc/nginx/conf.d/default.conf
RUN nginx -t
CMD /usr/sbin/nginx -g "daemon off;"
