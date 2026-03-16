FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY app/ /usr/share/nginx/html/
COPY startup.sh /startup.sh

RUN chmod +x /startup.sh

EXPOSE 80

CMD ["/startup.sh"]
