Basic steps for setting my website.

# Building and Testing Site Documents
For the purposes of testing the documents you can host the site locally using the following command:
```bash
docker run -d --rm -p 80:80 --name running-site --mount type=bind,source="$(pwd)/htdocs",target=/var/www/html php:7.3.9-apache-buster
```
Then, connect to the webserver through web browser using URL `0.0.0.0:80`. As changes are made to the shared directory the website will reflect these changes. NOTE: This Docker container cannot be used to debug server configuration issues.

# Setting up the server
## Building the Docker container
```bash
docker build -t personal-website .
```

## Running the Docker container
```bash
docker run -dit --rm --name running-site -p 80:80 personal-website
```

## Stopping the Docker container
```bash
docker stop running-site
```
