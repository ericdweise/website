Basic steps for setting my website.

# Testing Site Locally
For the purposes of testing the documents you can host the site locally using the following command:
```bash
docker-compose up testsrv
```
Then, connect to the webserver through web browser using URL `0.0.0.0`.


# Running Production Server
To run the site on the World Wide Web:
Run the init-letsencrypt.sh script
```bash
sudo ./init-letsencrypt.sh
```

## Stopping the Docker container
```bash
docker stop nginx phpfpm certbot
```


# Making changes to a running container
```bash
docker exec -it [CONTAINER] /bin/sh
```

# Deprecated
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
4. Test if SSL is enabled by visiting the site at `https://www.ericdweise.com`
