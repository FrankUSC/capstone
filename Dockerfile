FROM nginx
## Step 1:
# Copy website static files to the server
COPY website /usr/share/nginx/html

## Step 2:
# Expose port 80
EXPOSE 80

##Command to build the image
# docker build -t raosuper/saas-website:latest .

##Command to run the container
# docker run --name mySaasSite -d  -p 8080:80 raosuper/saas-website:latest
