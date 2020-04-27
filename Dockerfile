FROM nginx:1.18
WORKDIR /app
## Step 1:
# Copy website static files to the server
COPY website /usr/share/nginx/html
COPY Makefile Dockerfile *.yaml /app/
## Step 2:
# Expose port 80
EXPOSE 80

