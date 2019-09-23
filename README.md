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
docker run -dit --rm --name running-site -p 80:80 -p 443:443 personal-website
```

## Stopping the Docker container
```bash
docker stop running-site
```


# Making changes to a running container
To make changes to a running container you need to open a new interactive shell in that container. This is done using the following command:
```bash
docker exec -it running-site /bin/sh
```

## Installing ACME and Configuring SSL via certbot

1. Attach to the runing container.
2. Install certbot (Depending on the version of the Dockerfile used to create the image might already been done):
    ```bash
    apt-get update && apt-get install -y certbot python-certbot-apache
    ```
3. Apply for an SSL certificate:
    ```bash
    certbot --apache -d ericdweise.com -m ericdweise@gmail.com -n --agree-tos
    ```
4. ??? set certificate to renew automatically??? (maybe this is already done)
5. Test if SSL is enabled by visiting the site at `https://www.ericdweise.com`
