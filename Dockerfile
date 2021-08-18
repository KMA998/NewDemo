# base image - nginx with tag "latest"
FROM nginx:latest

# Adding custom index.html hosted on Github Gist
ADD https://gist.githubusercontent.com/KMA998/878aa3eebb6e769e68667745554ba90a/raw/6750c8e0de38c6787f914be7b5f55f01d2256e4f/index.html /usr/share/nginx/html/

# Adding read permissions to custom index.html
RUN chmod +r /usr/share/nginx/html/index.html

EXPOSE 80


# 'nginx -g daemon off" will run as default command when any container is run that uses the image that was built using this Dockerfile"
CMD ["nginx", "-g", "daemon off;"]