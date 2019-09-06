Basic steps for setting my website.

# Setting up the server

## Building the Docker container
```bash
docker build -t apache2-personal-website .
```

## Running the Docker container
```bash
docker run -dit --rm --name docker-website -p 80:8080 apache2-personal-website
```
Then, connect to the webserver through web browser using URL `0.0.0.0:8080`

# SSL
TBD
