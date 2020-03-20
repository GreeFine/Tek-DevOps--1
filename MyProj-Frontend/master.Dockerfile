FROM nginx
COPY build/ /usr/share/nginx/html
CMD /bin/bash -c "nginx -g 'daemon off;'"
EXPOSE 80