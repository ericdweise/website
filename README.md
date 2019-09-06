Basic steps for setting my website.

# Setting up the server

## Building the Docker container
```bash
docker build -t apache2-personal-website .
```

## Running the Docker container
### Running on LocalHost (for debugging)
```bash
docker run -dit --rm --name docker-website -p 8080:80 apache2-personal-website
```

### Running on the Internet
```bash
```

# SSL
TBD
