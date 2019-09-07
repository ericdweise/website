Basic steps for setting my website.

# Building and Testing Site Documents
For the purposes of testing the documents you can host the site locally using the following command:
```bash
docker run -d --rm -p 8080:80 --name personal-website --mount type=bind,source="$(pwd)/htdocs",target=/var/www/html php:7.3.9-apache-buster
```
Then, connect to the webserver through web browser using URL `0.0.0.0:8080`. As changes are made to the shared directory the website will reflect these changes. NOTE: This Docker container cannot be used to debug server configuration issues.

# Setting up the server
## Building the Docker container
```bash
docker build -t personal-website .
```

## Running the Docker container
```bash
docker run -dit --rm --name website -p 80:80 personal-website
```
