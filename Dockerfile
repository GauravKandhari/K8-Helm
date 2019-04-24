FROM nginx
RUN apt-get update
ADD index.html  /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
