#Using nginx official image
FROM nginx:latest

#replace default config file with custom file
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

#copy custom index.html file
COPY ./index.html /usr/share/nginx/html 
